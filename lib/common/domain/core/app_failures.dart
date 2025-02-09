import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';

@freezed
abstract class AppFailures with _$AppFailures {
  const factory AppFailures.failureWithMessage(String message) =
      _FailureWithMessage;
  const factory AppFailures.networkFailure(String message) = _NetworkFailure;
  const factory AppFailures.unexpected(String message) = _Unexpected;
}

Either<AppFailures, T> handleException<T>(dynamic e) {
  if (e is String) {
    return left(AppFailures.failureWithMessage(e));
  } else if (e is SocketException) {
    return left(AppFailures.networkFailure(e.message));
  } else {
    return left(AppFailures.unexpected(e.toString()));
  }
}
