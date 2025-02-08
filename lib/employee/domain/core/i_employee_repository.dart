import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';

abstract class IEmployeeRepository {
  List<EmployeeDetails> loadEmployees();
  void saveEmployees(List<EmployeeDetails> employees);
  void addEmployee(EmployeeDetails employee);
  void updateEmployee(String employeeId, EmployeeDetails updatedEmployee);
  void removeEmployee(String employeeId);
  void insertEmployee(int index, EmployeeDetails employee);
}
