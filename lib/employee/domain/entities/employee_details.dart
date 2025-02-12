import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_failures.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_objects.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_details.freezed.dart';

@freezed
class EmployeeDetails with _$EmployeeDetails {
  const EmployeeDetails._();

  const factory EmployeeDetails({
    required UniqueId employeeId,
    required Name employeeName,
    required Designation employeeDesignation,
    required EmploymentPeriod employmentPeriod,
  }) = _EmployeeDetails;

// Generate an empty EmployeeDTO
  factory EmployeeDetails.empty() {
    return EmployeeDetails(
      employeeId: UniqueId(),
      employeeName: Name(''),
      employeeDesignation: Designation(''),
      employmentPeriod: EmploymentPeriod(formatDate(DateTime.now())!, null),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return employeeId.failureOrUnit
        .andThen(employeeName.failureOrUnit)
        .andThen(employeeDesignation.failureOrUnit)
        .andThen(employmentPeriod.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

// class EmployeeDetails {
//   EmployeeDetails({
//     required this.employeeId,
//     required this.employeeName,
//     required this.employeeDesignation,
//     required this.employeeStartDate,
//     this.employeeEndDate,
//   });
//   final String employeeId;
//   final String employeeName;
//   final String employeeDesignation;
//   final String employeeStartDate;
//   final String? employeeEndDate;

//   // Factory method to return an empty instance
//   factory EmployeeDetails.empty() {
//     return EmployeeDetails(
//       employeeId: Uuid().v1().toString(),
//       employeeName: '',
//       employeeDesignation: '',
//       employeeStartDate: formatDate(DateTime.now())!,
//       employeeEndDate: null,
//     );
//   }

//   // Convert Employee object to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': employeeId,
//       'name': employeeName,
//       'designation': employeeDesignation,
//       'startDate': employeeStartDate,
//       'endDate': employeeEndDate,
//     };
//   }

//   // Convert JSON to Employee object
//   factory EmployeeDetails.fromJson(Map<String, dynamic> json) {
//     return EmployeeDetails(
//       employeeId: json['id'],
//       employeeName: json['name'],
//       employeeDesignation: json['designation'],
//       employeeStartDate: json['startDate'],
//       employeeEndDate: json['endDate'],
//     );
//   }

//   // CopyWith method to create a new instance with updated values
//   EmployeeDetails copyWith({
//     String? employeeId,
//     String? employeeName,
//     String? employeeDesignation,
//     String? employeeStartDate,
//     String? employeeEndDate,
//   }) {
//     return EmployeeDetails(
//       employeeId: employeeId ?? this.employeeId,
//       employeeName: employeeName ?? this.employeeName,
//       employeeDesignation: employeeDesignation ?? this.employeeDesignation,
//       employeeStartDate: employeeStartDate ?? this.employeeStartDate,
//       employeeEndDate: employeeEndDate,
//     );
//   }

//   // Validate employee details
//   Either<String, bool> isValid() {
//     if (employeeName.isEmpty) {
//       return left("Employee name cannot be empty");
//     }
//     if (employeeDesignation.isEmpty) {
//       return left("Employee designation cannot be empty");
//     }
//     if (employeeStartDate.isEmpty) {
//       return left("Employee start date cannot be empty");
//     }
//     if (employeeEndDate != null && employeeEndDate!.isEmpty) {
//       return left("Employee end date cannot be empty if provided");
//     }
//     return right(true);
//   }
// }
