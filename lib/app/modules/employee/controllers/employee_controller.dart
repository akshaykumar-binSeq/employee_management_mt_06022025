import 'package:employee_management_mt_06022025/app/common/constants.dart';
import 'package:employee_management_mt_06022025/app/data/employee/employee_details.dart';
import 'package:employee_management_mt_06022025/app/data/employee/employee_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  final EmployeeRepository _repository = EmployeeRepository();
  final TextEditingController employeeNameController = TextEditingController();
  final Rx<EmployeeDetails> employeeDetails = EmployeeDetails.empty().obs;
  final isLoading = false.obs;

  RxList<EmployeeDetails> employees = <EmployeeDetails>[].obs;
  RxList<EmployeeDetails> currentEmployees = <EmployeeDetails>[].obs;
  RxList<EmployeeDetails> previousEmployees = <EmployeeDetails>[].obs;

  void loadEmployees() {
    isLoading.value = true;
    employees.assignAll(_repository.loadEmployees());

    currentEmployees.value =
        employees.where((e) => e.employeeEndDate == null).toList();
    previousEmployees.value =
        employees.where((e) => e.employeeEndDate != null).toList();

    isLoading.value = false;
  }

  void addEmployee(EmployeeDetails employee) {
    employee.isValid().fold(
      (error) => toastMessage(error),
      (isValid) {
        _repository.addEmployee(employee);
        loadEmployees();
      },
    );
  }

  void editEmployee(String employeeId, EmployeeDetails updatedEmployee) {
    updatedEmployee.isValid().fold(
      (error) => toastMessage(error),
      (isValid) {
        _repository.updateEmployee(employeeId, updatedEmployee);
        loadEmployees();
      },
    );
  }

  void removeEmployee(String employeeId) {
    _repository.removeEmployee(employeeId);
    loadEmployees();
  }

  void undoRemoveEmployee(
    int index,
    EmployeeDetails removedEmployee,
  ) {
    _repository.insertEmployee(
      index,
      removedEmployee,
    );
    loadEmployees();
  }

  @override
  void onInit() {
    loadEmployees();
    super.onInit();
  }

  @override
  void onClose() {
    employeeNameController.dispose();
    super.onClose();
  }
}
