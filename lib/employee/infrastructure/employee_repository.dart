import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/app_failures.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:employee_management_mt_06022025/employee/domain/i_employee_repository.dart';
import 'package:employee_management_mt_06022025/employee/infrastructure/dtos/employee_details_dto.dart';
import 'package:get_storage/get_storage.dart';

class EmployeeRepository implements IEmployeeRepository {
  final GetStorage _box = GetStorage();

  @override
  Either<AppFailures, List<EmployeeDetails>> loadEmployees() {
    try {
      List<dynamic>? storedData = _box.read('employees');
      if (storedData != null) {
        return right(storedData
            .map((e) => EmployeeDetailsDTO.fromJson(e).toDomain())
            .toList());
      }
      return right([]);
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Either<AppFailures, Unit> saveEmployees(List<EmployeeDetails> employees) {
    try {
      _box.write(
          'employees',
          employees
              .map((e) => EmployeeDetailsDTO.fromDomain(e).toJson())
              .toList());
      return right(unit);
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Either<AppFailures, Unit> addEmployee(EmployeeDetails employee) {
    try {
      final employeesEither = loadEmployees();

      return employeesEither.fold(
        (failure) => left(AppFailures.failureWithMessage(
            'Loading employee from database failed')),
        (employees) {
          final updatedEmployees = List<EmployeeDetails>.from(employees)
            ..add(employee);
          saveEmployees(updatedEmployees);
          return right(unit);
        },
      );
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Either<AppFailures, Unit> updateEmployee(
      String employeeId, EmployeeDetails updatedEmployee) {
    try {
      final employeesEither = loadEmployees();

      return employeesEither.fold(
        (failure) => left(AppFailures.failureWithMessage(
            'Loading employee from database failed')),
        (employees) {
          int index = employees
              .indexWhere((e) => e.employeeId.getOrCrash() == employeeId);
          if (index != -1) {
            employees[index] = updatedEmployee;
            saveEmployees(employees);
            return right(unit);
          } else {
            return left(
              AppFailures.failureWithMessage(
                  'Employee Update Failed: No employee found with id'),
            );
          }
        },
      );
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Either<AppFailures, Unit> removeEmployee(String employeeId) {
    try {
      final employeesEither = loadEmployees();

      return employeesEither.fold(
        (failure) => left(AppFailures.failureWithMessage(
            'Loading employee from database failed')),
        (employees) {
          employees.removeWhere((e) => e.employeeId.getOrCrash() == employeeId);
          saveEmployees(employees);
          return right(unit);
        },
      );
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Either<AppFailures, Unit> insertEmployee(
      int index, EmployeeDetails employee) {
    try {
      final employeesEither = loadEmployees();

      return employeesEither.fold(
        (failure) => left(AppFailures.failureWithMessage(
            'Loading employee from database failed')),
        (employees) {
          employees.insert(index, employee);
          saveEmployees(employees);
          return right(unit);
        },
      );
    } catch (e) {
      return handleException(e);
    }
  }
}
