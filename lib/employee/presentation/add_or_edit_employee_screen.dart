import 'package:employee_management_mt_06022025/common/constants.dart';
import 'package:employee_management_mt_06022025/common/widgets/app_text_field.dart';
import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/presentation/widgets/app_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';

import 'widgets/botton_button_sheet.dart';

class AddOrEditEmployeeScreen extends StatelessWidget {
  AddOrEditEmployeeScreen({
    super.key,
    this.isEdit = false,
  });
  final bool isEdit;

  final List<String> designation = [
    "Product Designer",
    "Flutter Developer",
    "QA Tester",
    "Product Owner",
  ];

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
                    String employeeId = state.empployeeForm.employeeId;

                    int removedIndex = state.allEmployees
                        .indexWhere((e) => e.employeeId == employeeId);
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
              child: Column(
                children: [
                  AppTextBox(
                    controller: state.employeeNameController,
                    label: "Employee name",
                    prefixIcon: Icons.person_outlined,
                    validator: (value) => value!.isEmpty ? "" : null,
                    onChangeCallback: (v) => context.read<EmployeeBloc>().add(
                          EmployeeEvent.editEmployee(
                            state.empployeeForm.copyWith(employeeName: v),
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
                      text: state.empployeeForm.employeeDesignation,
                    ),
                    onTap: () {
                      _showNameListBottomSheet(
                        context,
                        (v) => context.read<EmployeeBloc>().add(
                              EmployeeEvent.editEmployee(
                                state.empployeeForm
                                    .copyWith(employeeDesignation: v),
                              ),
                            ),
                      );
                    },
                    validator: (value) => value!.isEmpty ? "" : null,
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
                            text: state.empployeeForm.employeeStartDate ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : state.empployeeForm.employeeStartDate,
                          ),
                          onTap: () async {
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                                    parseFormattedDate(
                                        state.empployeeForm.employeeStartDate));
                            if (selectedDate != null) {
                              // ignore: use_build_context_synchronously
                              context.read<EmployeeBloc>().add(
                                    EmployeeEvent.editEmployee(
                                      state.empployeeForm.copyWith(
                                        employeeStartDate:
                                            formatDate(selectedDate),
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
                          validator: (value) => value!.isEmpty ? "" : null,
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
                            text: state.empployeeForm.employeeEndDate ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : state.empployeeForm.employeeEndDate ?? '',
                          ),
                          onTap: () async {
                            if (parseFormattedDate(
                                    state.empployeeForm.employeeStartDate)!
                                .isAfter(DateTime.now())) {
                              toastMessage(
                                  "Start date is in present or future, Cannot add end date");
                              return;
                            }
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                              state.empployeeForm.employeeEndDate != null
                                  ? parseFormattedDate(
                                      state.empployeeForm.employeeEndDate)
                                  : DateTime.now(),
                              minDate: parseFormattedDate(
                                  state.empployeeForm.employeeStartDate),
                              showNoDateButton: true,
                              showFutureDate: false,
                            );
                            // ignore: use_build_context_synchronously
                            context.read<EmployeeBloc>().add(
                                  EmployeeEvent.editEmployee(
                                    state.empployeeForm.copyWith(
                                      employeeEndDate: formatDate(selectedDate),
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
                          validator: (value) => value!.isEmpty ? "" : null,
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

  // void showUndoSnackbar(String employeeId, int removedIndex,
  //     EmployeeDetails removedEmployee, Function(int, EmployeeDetails) onUndo) {
  //   AppDialogs.showSnackBar(
  //     "Employee data has been deleted.",
  //     textButton: TextButton(
  //       onPressed: () {
  //         onUndo(removedIndex, removedEmployee);
  //         Get.back(); // Close Snackbar
  //       },
  //       child: Text(
  //         "Undo",
  //         style: Get.textTheme.titleMedium?.copyWith(color: primaryColor),
  //       ),
  //     ),
  //   );
  // }

  void _showNameListBottomSheet(
    BuildContext context,
    Function(String designation) onSelectCallback,
  ) {
    showModalBottomSheet(
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
