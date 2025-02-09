// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeDetails {
  UniqueId get employeeId => throw _privateConstructorUsedError;
  Name get employeeName => throw _privateConstructorUsedError;
  Designation get employeeDesignation => throw _privateConstructorUsedError;
  EmploymentPeriod get employmentPeriod => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeDetailsCopyWith<EmployeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailsCopyWith<$Res> {
  factory $EmployeeDetailsCopyWith(
          EmployeeDetails value, $Res Function(EmployeeDetails) then) =
      _$EmployeeDetailsCopyWithImpl<$Res, EmployeeDetails>;
  @useResult
  $Res call(
      {UniqueId employeeId,
      Name employeeName,
      Designation employeeDesignation,
      EmploymentPeriod employmentPeriod});
}

/// @nodoc
class _$EmployeeDetailsCopyWithImpl<$Res, $Val extends EmployeeDetails>
    implements $EmployeeDetailsCopyWith<$Res> {
  _$EmployeeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeName = null,
    Object? employeeDesignation = null,
    Object? employmentPeriod = null,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as Name,
      employeeDesignation: null == employeeDesignation
          ? _value.employeeDesignation
          : employeeDesignation // ignore: cast_nullable_to_non_nullable
              as Designation,
      employmentPeriod: null == employmentPeriod
          ? _value.employmentPeriod
          : employmentPeriod // ignore: cast_nullable_to_non_nullable
              as EmploymentPeriod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeDetailsImplCopyWith<$Res>
    implements $EmployeeDetailsCopyWith<$Res> {
  factory _$$EmployeeDetailsImplCopyWith(_$EmployeeDetailsImpl value,
          $Res Function(_$EmployeeDetailsImpl) then) =
      __$$EmployeeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId employeeId,
      Name employeeName,
      Designation employeeDesignation,
      EmploymentPeriod employmentPeriod});
}

/// @nodoc
class __$$EmployeeDetailsImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsCopyWithImpl<$Res, _$EmployeeDetailsImpl>
    implements _$$EmployeeDetailsImplCopyWith<$Res> {
  __$$EmployeeDetailsImplCopyWithImpl(
      _$EmployeeDetailsImpl _value, $Res Function(_$EmployeeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeName = null,
    Object? employeeDesignation = null,
    Object? employmentPeriod = null,
  }) {
    return _then(_$EmployeeDetailsImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as Name,
      employeeDesignation: null == employeeDesignation
          ? _value.employeeDesignation
          : employeeDesignation // ignore: cast_nullable_to_non_nullable
              as Designation,
      employmentPeriod: null == employmentPeriod
          ? _value.employmentPeriod
          : employmentPeriod // ignore: cast_nullable_to_non_nullable
              as EmploymentPeriod,
    ));
  }
}

/// @nodoc

class _$EmployeeDetailsImpl extends _EmployeeDetails {
  const _$EmployeeDetailsImpl(
      {required this.employeeId,
      required this.employeeName,
      required this.employeeDesignation,
      required this.employmentPeriod})
      : super._();

  @override
  final UniqueId employeeId;
  @override
  final Name employeeName;
  @override
  final Designation employeeDesignation;
  @override
  final EmploymentPeriod employmentPeriod;

  @override
  String toString() {
    return 'EmployeeDetails(employeeId: $employeeId, employeeName: $employeeName, employeeDesignation: $employeeDesignation, employmentPeriod: $employmentPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDetailsImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.employeeDesignation, employeeDesignation) ||
                other.employeeDesignation == employeeDesignation) &&
            (identical(other.employmentPeriod, employmentPeriod) ||
                other.employmentPeriod == employmentPeriod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId, employeeName,
      employeeDesignation, employmentPeriod);

  /// Create a copy of EmployeeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDetailsImplCopyWith<_$EmployeeDetailsImpl> get copyWith =>
      __$$EmployeeDetailsImplCopyWithImpl<_$EmployeeDetailsImpl>(
          this, _$identity);
}

abstract class _EmployeeDetails extends EmployeeDetails {
  const factory _EmployeeDetails(
          {required final UniqueId employeeId,
          required final Name employeeName,
          required final Designation employeeDesignation,
          required final EmploymentPeriod employmentPeriod}) =
      _$EmployeeDetailsImpl;
  const _EmployeeDetails._() : super._();

  @override
  UniqueId get employeeId;
  @override
  Name get employeeName;
  @override
  Designation get employeeDesignation;
  @override
  EmploymentPeriod get employmentPeriod;

  /// Create a copy of EmployeeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeDetailsImplCopyWith<_$EmployeeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
