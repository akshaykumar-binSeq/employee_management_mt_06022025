import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/i_employee_repository.dart';
import 'package:get_storage/get_storage.dart';

class EmployeeRepository implements IEmployeeRepository {
  final GetStorage _box = GetStorage();

  @override
  List<EmployeeDetails> loadEmployees() {
    List<dynamic>? storedData = _box.read('employees');
    if (storedData != null) {
      return storedData.map((e) => EmployeeDetails.fromJson(e)).toList();
    }
    return [];
  }

  @override
  void saveEmployees(List<EmployeeDetails> employees) {
    _box.write('employees', employees.map((e) => e.toJson()).toList());
  }

  @override
  void addEmployee(EmployeeDetails employee) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.add(employee);
    saveEmployees(employees);
  }

  @override
  void updateEmployee(String employeeId, EmployeeDetails updatedEmployee) {
    List<EmployeeDetails> employees = loadEmployees();
    int index = employees.indexWhere((e) => e.employeeId == employeeId);
    if (index != -1) {
      employees[index] = updatedEmployee;
      saveEmployees(employees);
    }
  }

  @override
  void removeEmployee(String employeeId) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.removeWhere((e) => e.employeeId == employeeId);
    saveEmployees(employees);
  }

  @override
  void insertEmployee(int index, EmployeeDetails employee) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.insert(index, employee);
    saveEmployees(employees);
  }
}
