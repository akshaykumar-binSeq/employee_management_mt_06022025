import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidName({
    required T failedValue,
  }) = InvalidName<T>;
  const factory ValueFailure.invalidDesignation({
    required T failedValue,
  }) = InvalidTime<T>;
  const factory ValueFailure.invalidEmploymentPeriod({
    required T failedValue,
  }) = InvalidEmploymentPeriod<T>;
}
