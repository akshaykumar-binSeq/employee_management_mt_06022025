import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/app_failures.dart';
import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/common/presentation/widgets/app_dialogs.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/domain/i_employee_repository.dart';
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
          showErrorMessages: false,
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
      final employeesEither = _repository.loadEmployees();

      employeesEither.fold(
        (failure) {
          emit(state.copyWith(
            isLoading: false,
            getAllEmployeesFailureOrSuccessOption: optionOf(left(failure)),
          ));
        },
        (employees) {
          final List<EmployeeDetails> currentEmployees = employees
              .where((e) => e.employmentPeriod.getOrCrash().value2 == null)
              .toList();
          final List<EmployeeDetails> previousEmployees = employees
              .where((e) => e.employmentPeriod.getOrCrash().value2 != null)
              .toList();

          emit(state.copyWith(
              isLoading: false,
              allEmployees: employees,
              currentEmployees: currentEmployees,
              previousEmployees: previousEmployees,
              getAllEmployeesFailureOrSuccessOption:
                  optionOf(right(employees))));
        },
      );
    });

    on<_AddOrEditEmployee>((event, emit) async {
      emit(
        state.copyWith(
          isSubmitting: true,
          showErrorMessages: true,
          addOrEditEmployeeFailureOrSuccessOption: none(),
        ),
      );
      state.empployeeForm.failureOption.fold(
        () {
          Either<AppFailures, Unit> addOrEditEmployeeFailureOrSuccess;
          if (event.isEdit) {
            addOrEditEmployeeFailureOrSuccess = _repository.updateEmployee(
                state.empployeeForm.employeeId.getOrCrash(),
                state.empployeeForm);
          } else {
            addOrEditEmployeeFailureOrSuccess =
                _repository.addEmployee(state.empployeeForm);
          }
          add(_GetAllEmployee());
          emit(
            state.copyWith(
              isSubmitting: false,
              addOrEditEmployeeFailureOrSuccessOption:
                  optionOf(addOrEditEmployeeFailureOrSuccess),
            ),
          );
          Get.back();
        },
        (failure) {
          final errorMessage = failure.maybeMap(
            invalidName: (_) => 'Invalid Name',
            invalidDesignation: (_) => 'Invalid Designation',
            invalidEmploymentPeriod: (_) => 'Invalid Employeement Period',
            orElse: () => 'Unexpected error',
          );

          emit(
            state.copyWith(
              isSubmitting: false,
              addOrEditEmployeeFailureOrSuccessOption:
                  optionOf(left(AppFailures.failureWithMessage(errorMessage))),
            ),
          );

          toastMessage(errorMessage);
        },
      );
    });

    on<_DeleteEmployee>((event, emit) {
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
          deleteEmployeeFailureOrSuccessOption: none(),
        ),
      );
      int removedIndex = state.allEmployees
          .indexWhere((e) => e.employeeId == event.emmployeeDetails.employeeId);
      Either<AppFailures, Unit> deleteEmployeeFailureOrSuccess = _repository
          .removeEmployee(event.emmployeeDetails.employeeId.getOrElse(''));

      AppDialogs.showSnackBar(
        "Employee data has been deleted.",
        callback: () =>
            add(_UndoDeleteEmployee(removedIndex, event.emmployeeDetails)),
      );
      add(_GetAllEmployee());

      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
          deleteEmployeeFailureOrSuccessOption:
              optionOf(deleteEmployeeFailureOrSuccess),
        ),
      );
    });

    on<_UndoDeleteEmployee>((event, emit) {
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
          deleteEmployeeFailureOrSuccessOption: none(),
        ),
      );

      Either<AppFailures, Unit> undoDeleteEmployeeFailureOrSuccess =
          _repository.insertEmployee(
        event.index,
        event.emmployeeDetails,
      );
      emit(
        state.copyWith(
          addOrEditEmployeeFailureOrSuccessOption: none(),
          deleteEmployeeFailureOrSuccessOption:
              optionOf(undoDeleteEmployeeFailureOrSuccess),
        ),
      );
      add(_GetAllEmployee());
    });
  }
}
