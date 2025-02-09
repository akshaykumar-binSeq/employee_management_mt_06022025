import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/presentation/add_or_edit_employee_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class EmployeeListTile extends StatelessWidget {
  const EmployeeListTile(
    this.employeeDetails, {
    super.key,
  });

  final EmployeeDetails employeeDetails;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
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
                  context.read<EmployeeBloc>().add(
                      EmployeeEvent.editEmployeeName(
                          employeeDetails.employeeName.getOrCrash()));
                  context
                      .read<EmployeeBloc>()
                      .add(EmployeeEvent.editEmployee(employeeDetails));

                  Get.to(() => AddOrEditEmployeeScreen(
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
                  String employeeId = employeeDetails.employeeId.getOrCrash();
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
              context.read<EmployeeBloc>().add(EmployeeEvent.editEmployeeName(
                  employeeDetails.employeeName.getOrCrash()));
              context
                  .read<EmployeeBloc>()
                  .add(EmployeeEvent.editEmployee(employeeDetails));

              Get.to(() => AddOrEditEmployeeScreen(
                    isEdit: true,
                  ));
            },
            title: Text(
              employeeDetails.employeeName.getOrElse(''),
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
                  employeeDetails.employeeDesignation.getOrElse(''),
                  style: Get.textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  employeeDetails.employmentPeriod.getOrCrash().value2 == null
                      ? 'From ${employeeDetails.employmentPeriod.getOrCrash().value1}'
                      : '${employeeDetails.employmentPeriod.getOrCrash().value1} - ${employeeDetails.employmentPeriod.getOrCrash().value2}',
                  style: Get.textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
