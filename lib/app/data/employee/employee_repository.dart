import 'package:employee_management_mt_06022025/app/data/employee/employee_details.dart';
import 'package:get_storage/get_storage.dart';

class EmployeeRepository {
  final GetStorage _box = GetStorage();

  List<EmployeeDetails> loadEmployees() {
    List<dynamic>? storedData = _box.read('employees');
    if (storedData != null) {
      return storedData.map((e) => EmployeeDetails.fromJson(e)).toList();
    }
    return [];
  }

  void saveEmployees(List<EmployeeDetails> employees) {
    _box.write('employees', employees.map((e) => e.toJson()).toList());
  }

  void addEmployee(EmployeeDetails employee) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.add(employee);
    saveEmployees(employees);
  }

  void updateEmployee(String employeeId, EmployeeDetails updatedEmployee) {
    List<EmployeeDetails> employees = loadEmployees();
    int index = employees.indexWhere((e) => e.employeeId == employeeId);
    if (index != -1) {
      employees[index] = updatedEmployee;
      saveEmployees(employees);
    }
  }

  void removeEmployee(String employeeId) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.removeWhere((e) => e.employeeId == employeeId);
    saveEmployees(employees);
  }

  
  void insertEmployee(int index, EmployeeDetails employee) {
    List<EmployeeDetails> employees = loadEmployees();
    employees.insert(index, employee);
    saveEmployees(employees);
  }
}
