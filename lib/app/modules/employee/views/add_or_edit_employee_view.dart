import 'package:employee_management_mt_06022025/app/common/constants.dart';
import 'package:employee_management_mt_06022025/app/common/widgets/app_text_field.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/views/widgets/botton_button_sheet.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/views/widgets/app_date_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/employee_controller.dart';

class AddOrEditEmployeeView extends GetView<EmployeeController> {
  AddOrEditEmployeeView({
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
                  controller.removeEmployee(
                      controller.employeeDetails.value.employeeId);

                  Get.back();
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
            child: Obx(
              () => Column(
                children: [
                  AppTextBox(
                    controller: controller.employeeNameController,
                    label: "Employee name",
                    prefixIcon: Icons.person_outlined,
                    validator: (value) => value!.isEmpty ? "" : null,
                    onChangeCallback: (v) => controller.employeeDetails.value =
                        controller.employeeDetails.value
                            .copyWith(employeeName: v),
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
                          controller.employeeDetails.value.employeeDesignation,
                    ),
                    onTap: () {
                      _showNameListBottomSheet(
                          context,
                          (v) => controller.employeeDetails.value = controller
                              .employeeDetails.value
                              .copyWith(employeeDesignation: v));
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
                            text: controller.employeeDetails.value
                                        .employeeStartDate ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : controller
                                    .employeeDetails.value.employeeStartDate,
                          ),
                          onTap: () async {
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                                    parseFormattedDate(controller
                                        .employeeDetails
                                        .value
                                        .employeeStartDate));
                            if (selectedDate != null) {
                              controller.employeeDetails.value =
                                  controller.employeeDetails.value.copyWith(
                                      employeeStartDate:
                                          formatDate(selectedDate));
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
                            text: controller.employeeDetails.value
                                        .employeeEndDate ==
                                    formatDate(DateTime.now())
                                ? 'Today'
                                : controller.employeeDetails.value
                                        .employeeEndDate ??
                                    '',
                          ),
                          onTap: () async {
                            final selectedDate =
                                await AppDatePicker.showDatePicker(
                              controller.employeeDetails.value
                                          .employeeEndDate !=
                                      null
                                  ? parseFormattedDate(controller
                                      .employeeDetails.value.employeeEndDate)
                                  : DateTime.now(),
                              minDate: parseFormattedDate(controller
                                  .employeeDetails.value.employeeStartDate),
                              showNoDateButton: true,
                              showFutureDate: false,
                            );

                            controller.employeeDetails.value =
                                controller.employeeDetails.value.copyWith(
                                    employeeEndDate: formatDate(selectedDate));
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
        ));
  }

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
