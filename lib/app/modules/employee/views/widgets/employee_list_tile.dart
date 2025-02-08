import 'package:employee_management_mt_06022025/app/common/constants.dart';
import 'package:employee_management_mt_06022025/app/data/employee/employee_details.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/controllers/employee_controller.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/views/add_or_edit_employee_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class EmployeeListTile extends GetView<EmployeeController> {
  const EmployeeListTile(
    this.employeeDetails, {
    super.key,
  });

  final EmployeeDetails employeeDetails;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // The start action pane is the one at the left or the top side.
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.

          SlidableAction(
            onPressed: (BuildContext context) {
              Get.to(() => AddOrEditEmployeeView(
                    isEdit: true,
                  ));
            },
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: secondaryColor,
            icon: Icons.info_outline,
          ),
        ],
      ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (BuildContext context) {
              String employeeId = employeeDetails.employeeId;
              int removedIndex = controller.employees
                  .indexWhere((e) => e.employeeId == employeeId);
              if (removedIndex != -1) {
                EmployeeDetails removedEmployee =
                    controller.employees[removedIndex];
                controller.removeEmployee(employeeId);

                showUndoSnackbar(
                  context,
                  employeeId,
                  removedIndex,
                  removedEmployee,
                  (index, employee) {
                    controller.undoRemoveEmployee(index, employee);
                  },
                );
              }
            },
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: secondaryColor,
            icon: Icons.delete_outline, autoClose: true,
            padding: EdgeInsets.all(16),
            spacing: 0,
            // label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        tileColor: secondaryColor,
        onTap: () {
          controller.employeeNameController.text = employeeDetails.employeeName;
          controller.employeeDetails.value = employeeDetails;
          Get.to(() => AddOrEditEmployeeView(
                isEdit: true,
              ));
        },
        title: Text(
          employeeDetails.employeeName,
          style: Get.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4,
            ),
            Text(
              employeeDetails.employeeDesignation,
              style: Get.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              employeeDetails.employeeEndDate == null
                  ? 'From ${employeeDetails.employeeStartDate}'
                  : '${employeeDetails.employeeStartDate} - ${employeeDetails.employeeEndDate}',
              style: Get.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  void showUndoSnackbar(
      BuildContext context,
      String employeeId,
      int removedIndex,
      EmployeeDetails removedEmployee,
      Function(int, EmployeeDetails) onUndo) {
    Get.snackbar(
      margin: EdgeInsets.zero, titleText: Container(),
      '',
      '',
      messageText: Text(
        "Employee data has been deleted.",
        style: Get.textTheme.titleMedium?.copyWith(
          color: secondaryColor,
        ),
      ),
      backgroundColor: Colors.grey.shade900,
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 0,
      // margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      duration: const Duration(seconds: 4),
      mainButton: TextButton(
        onPressed: () {
          onUndo(removedIndex, removedEmployee);
          Get.back(); // Close Snackbar
        },
        child: Text(
          "Undo",
          style: Get.textTheme.titleMedium?.copyWith(color: primaryColor),
        ),
      ),
    );
  }
}
