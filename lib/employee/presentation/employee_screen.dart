import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/common/presentation/widgets/app_dialogs.dart';
import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/presentation/add_or_edit_employee_screen.dart';
import 'package:employee_management_mt_06022025/employee/presentation/widgets/employee_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final employeeBloc = BlocProvider.of<EmployeeBloc>(context);
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      bloc: employeeBloc..add(EmployeeEvent.getAllEmployee()),
      listenWhen: (previous, current) =>
          previous.addOrEditEmployeeFailureOrSuccessOption !=
          current.addOrEditEmployeeFailureOrSuccessOption,
      listener: (context, state) {
        state.addOrEditEmployeeFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (falied) {
              AppDialogs.showSnackBar(
                  'Added Employee Failed: ${falied.message}');
            },
            (success) {
              AppDialogs.showSnackBar('Employee Updated Successsfully');
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text(
              'Employee List',
              style: Get.textTheme.titleLarge?.copyWith(
                color: secondaryColor,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context
                  .read<EmployeeBloc>()
                  .add(EmployeeEvent.editEmployeeName(''));
              context
                  .read<EmployeeBloc>()
                  .add(EmployeeEvent.editEmployee(EmployeeDetails.empty()));

              Get.to(() => AddOrEditEmployeeScreen());
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Same as ClipRRect
            ),
            backgroundColor: primaryColor, // Customize color
            child: Icon(Icons.add, size: 30, color: secondaryColor),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<EmployeeBloc>().add(EmployeeEvent.getAllEmployee());
              return Future.value();
            },
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: state.isLoading
                  ? SizedBox(
                      height: Get.height - 80,
                      width: Get.width,
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : state.allEmployees.isEmpty
                      ? SizedBox(
                          height: Get.height - 80,
                          width: Get.width,
                          child: Image.asset('assets/empty_data.png'),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.currentEmployees.isNotEmpty)
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                color: secondaryAccentColor,
                                child: Text(
                                  'Current Employees',
                                  style: Get.textTheme.titleMedium?.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: state.currentEmployees.length,
                              itemBuilder: (context, index) {
                                return EmployeeListTile(
                                    state.currentEmployees[index]);
                              },
                            ),
                            if (state.previousEmployees.isNotEmpty)
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                color: secondaryAccentColor,
                                child: Text(
                                  'Previous Employees',
                                  style: Get.textTheme.titleMedium?.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: state.previousEmployees.length,
                              itemBuilder: (context, index) {
                                return EmployeeListTile(
                                    state.previousEmployees[index]);
                              },
                            ),
                          ],
                        ),
            ),
          ),
        );
      },
    );
  }
}
