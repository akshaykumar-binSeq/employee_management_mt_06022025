part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required bool isLoading,
    required bool isSubmitting,
    required EmployeeDetails empployeeForm,
    required TextEditingController employeeNameController,
    required List<EmployeeDetails> currentEmployees,
    required List<EmployeeDetails> previousEmployees,
    required List<EmployeeDetails> allEmployees,
    required Option<Either<String, List<EmployeeDetails>>>
        getAllEmployeesFailureOrSuccessOption,
    required Option<Either<String, dynamic>>
        addOrEditEmployeeFailureOrSuccessOption,
    required Option<Either<String, dynamic>>
        deleteEmployeeFailureOrSuccessOption,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(
        isLoading: false,
        isSubmitting: false,
        employeeNameController: TextEditingController(),
        empployeeForm: EmployeeDetails.empty(),
        allEmployees: [],
        currentEmployees: [],
        previousEmployees: [],
        addOrEditEmployeeFailureOrSuccessOption: none(),
        deleteEmployeeFailureOrSuccessOption: none(),
        getAllEmployeesFailureOrSuccessOption: none(),
      );
}
