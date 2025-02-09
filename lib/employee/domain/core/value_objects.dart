import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_failures.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_objects.dart';
import 'package:employee_management_mt_06022025/common/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateName(input),
    );
  }

  const Name._(this.value);
}

class Designation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Designation(String input) {
    return Designation._(
      validateDesignation(input),
    );
  }

  const Designation._(this.value);
}

class EmploymentPeriod extends ValueObject<Tuple2<String, String?>> {
  @override
  final Either<ValueFailure<Tuple2<String, String?>>, Tuple2<String, String?>>
      value;

  factory EmploymentPeriod(String from, String? to) {
    return EmploymentPeriod._(
      validateEmploymentPeriod(from, to),
    );
  }

  const EmploymentPeriod._(this.value);
}
