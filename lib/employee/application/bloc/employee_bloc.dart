import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/constants.dart';
import 'package:employee_management_mt_06022025/common/widgets/app_dialogs.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/i_employee_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final IEmployeeRepository _repository;

  EmployeeBloc(this._repository) : super(EmployeeState.initial()) {
    on<EmployeeEvent>((event, emit) {
      // add(_GetAllEmployee());
    });

    on<_EditEmployee>((event, emit) {
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
          empployeeForm: event.employeeDetails,
        ),
      );
    });

    on<_EditEmployeeName>((event, emit) {
      emit(
        state.copyWith(
          employeeNameController: TextEditingController(text: event.name),
        ),
      );
    });

    on<_GetAllEmployee>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      final employees = _repository.loadEmployees();
      final List<EmployeeDetails> currentEmployees =
          employees.where((e) => e.employeeEndDate == null).toList();
      final List<EmployeeDetails> previousEmployees =
          employees.where((e) => e.employeeEndDate != null).toList();

      emit(
        state.copyWith(
          isLoading: false,
          allEmployees: employees,
          currentEmployees: currentEmployees,
          previousEmployees: previousEmployees,
        ),
      );
    });

    on<_AddOrEditEmployee>((event, emit) async {
      emit(
        state.copyWith(
          isSubmitting: true,
          addOrEditEmployeeFailureOrSuccessOption: none(),
        ),
      );
      state.empployeeForm.isValid().fold(
        (error) {
          emit(
            state.copyWith(
              isSubmitting: false,
              addOrEditEmployeeFailureOrSuccessOption: optionOf(left(error)),
            ),
          );
          toastMessage(error);
        },
        (isValid) {
          if (event.isEdit) {
            _repository.updateEmployee(
                state.empployeeForm.employeeId, state.empployeeForm);
          } else {
            _repository.addEmployee(state.empployeeForm);
          }
          add(_GetAllEmployee());
          emit(
            state.copyWith(
              isSubmitting: false,
              addOrEditEmployeeFailureOrSuccessOption: optionOf(
                right('Employee Added Successfully'),
              ),
            ),
          );
          Get.back();
        },
      );
    });

    on<_DeleteEmployee>((event, emit) {
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
        ),
      );
      int removedIndex = state.allEmployees
          .indexWhere((e) => e.employeeId == event.emmployeeDetails.employeeId);
      _repository.removeEmployee(event.emmployeeDetails.employeeId);

      AppDialogs.showSnackBar(
        "Employee data has been deleted.",
        callback: () =>
            add(_UndoDeleteEmployee(removedIndex, event.emmployeeDetails)),
      );
      add(_GetAllEmployee());
    });

    on<_UndoDeleteEmployee>((event, emit) {
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
        ),
      );

      _repository.insertEmployee(
        event.index,
        event.emmployeeDetails,
      );
      add(_GetAllEmployee());
    });
  }
}
