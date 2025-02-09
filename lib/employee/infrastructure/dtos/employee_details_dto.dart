import 'package:flutter/foundation.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_objects.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/value_objects.dart';
import 'package:employee_management_mt_06022025/employee/domain/entities/employee_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_details_dto.freezed.dart';
part 'employee_details_dto.g.dart';

@freezed
class EmployeeDetailsDTO with _$EmployeeDetailsDTO {
  const EmployeeDetailsDTO._();
  const factory EmployeeDetailsDTO({
    required String id,
    required String name,
    required String designation,
    required String startDate,
    String? endDate,
  }) = _EmployeeDetailsDTO;

  // JSON serialization methods
  factory EmployeeDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDetailsDTOFromJson(json);

  // Convert DTO to Entity
  EmployeeDetails toDomain() {
    return EmployeeDetails(
      employeeId: UniqueId.fromUniqueString(id),
      employeeName: Name(name),
      employeeDesignation: Designation(designation),
      employmentPeriod: EmploymentPeriod(startDate, endDate),
    );
  }

  // Convert Entity to DTO
  factory EmployeeDetailsDTO.fromDomain(EmployeeDetails entity) {
    return EmployeeDetailsDTO(
      id: entity.employeeId.getOrCrash(),
      name: entity.employeeName.getOrCrash(),
      designation: entity.employeeDesignation.getOrCrash(),
      startDate: entity.employmentPeriod.getOrCrash().value1,
      endDate: entity.employmentPeriod.getOrCrash().value2,
    );
  }
}
