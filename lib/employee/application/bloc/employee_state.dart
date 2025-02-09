part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required bool isLoading,
    required bool isSubmitting,
    required bool showErrorMessages,
    required EmployeeDetails empployeeForm,
    required TextEditingController employeeNameController,
    required List<EmployeeDetails> currentEmployees,
    required List<EmployeeDetails> previousEmployees,
    required List<EmployeeDetails> allEmployees,
    required Option<Either<AppFailures, List<EmployeeDetails>>>
        getAllEmployeesFailureOrSuccessOption,
    required Option<Either<AppFailures, Unit>>
        addOrEditEmployeeFailureOrSuccessOption,
    required Option<Either<AppFailures, Unit>>
        deleteEmployeeFailureOrSuccessOption,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(
        isLoading: false,
        isSubmitting: false,
        showErrorMessages: false,
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
