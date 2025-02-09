import 'package:dartz/dartz.dart';
import 'package:employee_management_mt_06022025/common/domain/core/constants.dart';
import 'package:employee_management_mt_06022025/employee/domain/core/employee_constants.dart';

import 'value_failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else if (input.isEmpty || input == '') {
    return left(ValueFailure.empty(failedValue: input));
  }
  {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  // Custom name validation logic
  const nameRegex = r"^[A-Za-z]+( [A-Za-z]+)?$";
  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDesignation(String input) {
  // Maybe not the most robust way of email validation but it's good enough

  if (designation.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDesignation(failedValue: input));
  }
}

Either<ValueFailure<Tuple2<String, String?>>, Tuple2<String, String?>>
    validateEmploymentPeriod(String from, String? to) {
  final fromDate = parseFormattedDate(from);
  final toDate = to != null ? parseFormattedDate(to) : null;

  // Ensure fromDate is valid
  if (fromDate == null) {
    return left(
        ValueFailure.invalidEmploymentPeriod(failedValue: Tuple2(from, to)));
  }

  // If "from" date is in the future, "to" date should be null
  if (fromDate.isAfter(DateTime.now())) {
    if (to != null) {
      return left(
          ValueFailure.invalidEmploymentPeriod(failedValue: Tuple2(from, to)));
    }
  }

  // "To" date can be null
  if (toDate == null) {
    return right(Tuple2(from, to));
  }

  // Ensure "to" date is after "from" date
  if (!toDate.isAfter(fromDate)) {
    return left(
        ValueFailure.invalidEmploymentPeriod(failedValue: Tuple2(from, to)));
  }

  return right(Tuple2(from, to));
}
