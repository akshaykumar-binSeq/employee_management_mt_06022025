import 'package:employee_management_mt_06022025/app/common/constants.dart';
import 'package:employee_management_mt_06022025/app/data/employee/employee_details.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/controllers/employee_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottonButtonSheet extends GetView<EmployeeController> {
  const BottonButtonSheet(
    this.isEdit, {
    super.key,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryAccentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
            ),
            onPressed: () {
              controller.employeeNameController.clear();
              controller.employeeDetails.value = EmployeeDetails.empty();
              Get.back();
            },
            child: Text(
              'Cancel',
              style: Get.textTheme.titleMedium?.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 12,
              ),
            ),
            onPressed: () async {
              if (isEdit) {
                controller.editEmployee(
                  controller.employeeDetails.value.employeeId,
                  controller.employeeDetails.value,
                );
              } else {
                controller.addEmployee(controller.employeeDetails.value);
              }
              Get.back();
            },
            child: Text(
              'Save',
              style: Get.textTheme.titleMedium?.copyWith(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
