import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/common/presentation/widgets/app_text_field.dart';
import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/employee_constants.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/value_objects.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/presentation/widgets/app_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';

import 'widgets/botton_button_sheet.dart';

class AddOrEditEmployeeScreen extends StatelessWidget {
  const AddOrEditEmployeeScreen({
    super.key,
    this.isEdit = false,
  });
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: primaryColor,
            title: Text(
              isEdit ? 'Edit Employee Details' : 'Add Employee Details',
              style: Get.textTheme.titleLarge?.copyWith(
                color: secondaryColor,
              ),
            ),
            actions: [
              if (isEdit)
                IconButton(
                  onPressed: () {
                    Get.back();
                    String employeeId =
                        state.empployeeForm.employeeId.getOrCrash();

                    int removedIndex = state.allEmployees.indexWhere(
                        (e) => e.employeeId.getOrCrash() == employeeId);
                    if (removedIndex != -1) {
                      EmployeeDetails removedEmployee =
                          state.allEmployees[removedIndex];

                      context
                          .read<EmployeeBloc>()
                          .add(EmployeeEvent.deleteEmployee(removedEmployee));
                    }
                  },
                  icon: Icon(
                    Icons.delete,
                    color: secondaryColor,
                  ),
                )
            ],
          ),
          bottomSheet: BottonButtonSheet(isEdit),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  AppTextBox(
                    controller: state.employeeNameController,
                    label: "Employee name",
                    prefixIcon: Icons.person_outlined,
                    validator: (v) =>
                        state.empployeeForm.employeeName.value.fold(
                      (f) => f.maybeMap(
                        invalidName: (_) => 'Invalid Name',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                    textInputFormatter: [
                      FilteringTextInputFormatter.allow(
                          alphabetsWithSpaceRegex),
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                    onChangeCallback: (v) => context.read<EmployeeBloc>().add(
                          EmployeeEvent.editEmployee(
                            state.empployeeForm
                                .copyWith(employeeName: Name(v ?? '')),
                          ),
                        ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AppTextBox(
                    label: "Select role",
                    prefixIcon: Icons.shopping_bag_outlined,
                    suffixIcon: Icons.arrow_drop_down,
                    controller: TextEditingController(
                      text:
                          state.empployeeForm.employeeDesignation.getOrElse(''),
                    ),
                    onTap: () async {
                      await _showNameListBottomSheet(
                        context,
                        (v) => context.read<EmployeeBloc>().add(
                              EmployeeEvent.editEmployee(
                                state.empployeeForm.copyWith(
                                    employeeDesignation: Designation(v)),
                              ),
                            ),
                      );
                    },
                    validator: (v) =>
                        state.empployeeForm.employeeDesignation.value.fold(
                      (f) => f.maybeMap(
                        invalidDesignation: (_) => 'Invalid Designation',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                    isReadOnly: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppTextBox(
                          controller: TextEditingController(
                            text: state.empployeeForm.employmentPeriod
                                        .getOrCrash()
                                        .value1 ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : state.empployeeForm.employmentPeriod
                                    .getOrCrash()
                                    .value1,
                          ),
                          onTap: () async {
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                                    parseFormattedDate(state
                                        .empployeeForm.employmentPeriod
                                        .getOrCrash()
                                        .value1));
                            if (selectedDate != null) {
                              final startDate = DateTime(selectedDate.year,
                                  selectedDate.month, selectedDate.day);

                              final today = DateTime.now();
                              final todayDateOnly =
                                  DateTime(today.year, today.month, today.day);
                              final isInvalid =
                                  startDate.isAfter(todayDateOnly) ||
                                      startDate.isAtSameMomentAs(todayDateOnly);
                              // ignore: use_build_context_synchronously
                              context.read<EmployeeBloc>().add(
                                    EmployeeEvent.editEmployee(
                                      state.empployeeForm.copyWith(
                                        employmentPeriod: EmploymentPeriod(
                                            formatDate(selectedDate)!,
                                            isInvalid
                                                ? null
                                                : state.empployeeForm
                                                    .employmentPeriod
                                                    .getOrCrash()
                                                    .value2),
                                      ),
                                    ),
                                  );
                            }
                            Future.delayed(Duration(milliseconds: 500), () {
                              // ignore: use_build_context_synchronously
                              FocusScope.of(context).unfocus();
                            });
                          },
                          label: "Today",
                          prefixIcon: Icons.calendar_today_outlined,
                          validator: (v) =>
                              state.empployeeForm.employmentPeriod.value.fold(
                            (f) => f.maybeMap(
                              invalidEmploymentPeriod: (_) =>
                                  'Invalid Employment Period',
                              orElse: () => '',
                            ),
                            (_) => null,
                          ),
                          isReadOnly: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(
                          Icons.arrow_right_alt_outlined,
                          color: primaryColor,
                        ),
                      ),
                      Expanded(
                        child: AppTextBox(
                          controller: TextEditingController(
                            text: state.empployeeForm.employmentPeriod
                                        .getOrCrash()
                                        .value2 ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : state.empployeeForm.employmentPeriod
                                        .getOrCrash()
                                        .value2 ??
                                    '',
                          ),
                          onTap: () async {
                            final startDate = parseFormattedDate(
                              state.empployeeForm.employmentPeriod
                                  .getOrCrash()
                                  .value1,
                            )?.toLocal();

                            final today = DateTime.now();
                            final todayDateOnly =
                                DateTime(today.year, today.month, today.day);
                            final isInvalid = startDate != null &&
                                    startDate.isAfter(todayDateOnly) ||
                                startDate!.isAtSameMomentAs(todayDateOnly);
                            if (isInvalid) {
                              toastMessage(
                                  "Start date is in present or future, Cannot add end date");
                              return;
                            }
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                              state.empployeeForm.employmentPeriod
                                          .getOrCrash()
                                          .value2 !=
                                      null
                                  ? parseFormattedDate(state
                                      .empployeeForm.employmentPeriod
                                      .getOrCrash()
                                      .value2)
                                  : DateTime.now(),
                              minDate: parseFormattedDate(state
                                  .empployeeForm.employmentPeriod
                                  .getOrCrash()
                                  .value1),
                              showNoDateButton: true,
                              showFutureDate: false,
                            );
                            // ignore: use_build_context_synchronously
                            context.read<EmployeeBloc>().add(
                                  EmployeeEvent.editEmployee(
                                    state.empployeeForm.copyWith(
                                      employmentPeriod: EmploymentPeriod(
                                        state.empployeeForm.employmentPeriod
                                            .getOrCrash()
                                            .value1,
                                        formatDate(selectedDate)!,
                                      ),
                                    ),
                                  ),
                                );

                            Future.delayed(Duration(milliseconds: 500), () {
                              // ignore: use_build_context_synchronously
                              FocusScope.of(context).unfocus();
                            });
                          },
                          label: "No Date",
                          prefixIcon: Icons.calendar_today_outlined,
                          validator: (v) =>
                              state.empployeeForm.employmentPeriod.value.fold(
                            (f) => f.maybeMap(
                              invalidEmploymentPeriod: (_) =>
                                  'Invalid Employment Period',
                              orElse: () => '',
                            ),
                            (_) => null,
                          ),
                          isReadOnly: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showNameListBottomSheet(
    BuildContext context,
    Function(String designation) onSelectCallback,
  ) async {
    await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: Get.height * .24,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: designation.length,
                  itemBuilder: (context, index) {
                    return _listTile(
                      context,
                      designation[index],
                      onSelectCallback,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _listTile(
    BuildContext context,
    String name,
    Function(String designation) onSelectCallback,
  ) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      shape: LinearBorder.bottom(
        side: BorderSide(color: Colors.grey, width: 0.5), // Grey bottom border
      ),
      title: Center(
        child: Text(
          name,
          style: Get.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Close the bottom sheet
        onSelectCallback(name);
      },
    );
  }
}
