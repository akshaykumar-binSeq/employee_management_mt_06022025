import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/app_failures.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';

abstract class IEmployeeRepository {
   Either<AppFailures,List<EmployeeDetails>> loadEmployees();
  Either<AppFailures, Unit>  saveEmployees(List<EmployeeDetails> employees);
    Either<AppFailures, Unit> addEmployee(EmployeeDetails employee);
    Either<AppFailures, Unit> updateEmployee(String employeeId, EmployeeDetails updatedEmployee);
    Either<AppFailures, Unit> removeEmployee(String employeeId);
    Either<AppFailures, Unit> insertEmployee(int index, EmployeeDetails employee);
}
