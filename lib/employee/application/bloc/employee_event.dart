part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.started() = _Started;
  const factory EmployeeEvent.getAllEmployee() = _GetAllEmployee;

  const factory EmployeeEvent.addOrEditEmployee({
    required bool isEdit,
  }) = _AddOrEditEmployee;

  const factory EmployeeEvent.editEmployee(
    EmployeeDetails employeeDetails,
  ) = _EditEmployee;
  
  const factory EmployeeEvent.editEmployeeName(
    String name,
  ) = _EditEmployeeName;

  const factory EmployeeEvent.deleteEmployee(
    EmployeeDetails emmployeeDetails,
  ) = _DeleteEmployee;

  const factory EmployeeEvent.undoDeleteEmployee(
    int index,
    EmployeeDetails emmployeeDetails,
  ) = _UndoDeleteEmployee;
}
