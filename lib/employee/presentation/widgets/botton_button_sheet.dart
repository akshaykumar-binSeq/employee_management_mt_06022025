import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/employee/application/bloc/employee_bloc.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BottonButtonSheet extends StatelessWidget {
  const BottonButtonSheet(
    this.isEdit, {
    super.key,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
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
                  context
                      .read<EmployeeBloc>()
                      .add(EmployeeEvent.editEmployeeName(''));
                  context
                      .read<EmployeeBloc>()
                      .add(EmployeeEvent.editEmployee(EmployeeDetails.empty()));

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
                    context
                        .read<EmployeeBloc>()
                        .add(EmployeeEvent.addOrEditEmployee(isEdit: true));
                  } else {
                    context
                        .read<EmployeeBloc>()
                        .add(EmployeeEvent.addOrEditEmployee(isEdit: false));
                  }
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
      },
    );
  }
}
