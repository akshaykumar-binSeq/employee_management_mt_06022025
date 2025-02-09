// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeDetailsDTO _$EmployeeDetailsDTOFromJson(Map<String, dynamic> json) {
  return _EmployeeDetailsDTO.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDetailsDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;

  /// Serializes this EmployeeDetailsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeDetailsDTOCopyWith<EmployeeDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailsDTOCopyWith<$Res> {
  factory $EmployeeDetailsDTOCopyWith(
          EmployeeDetailsDTO value, $Res Function(EmployeeDetailsDTO) then) =
      _$EmployeeDetailsDTOCopyWithImpl<$Res, EmployeeDetailsDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String designation,
      String startDate,
      String? endDate});
}

/// @nodoc
class _$EmployeeDetailsDTOCopyWithImpl<$Res, $Val extends EmployeeDetailsDTO>
    implements $EmployeeDetailsDTOCopyWith<$Res> {
  _$EmployeeDetailsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? designation = null,
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeDetailsDTOImplCopyWith<$Res>
    implements $EmployeeDetailsDTOCopyWith<$Res> {
  factory _$$EmployeeDetailsDTOImplCopyWith(_$EmployeeDetailsDTOImpl value,
          $Res Function(_$EmployeeDetailsDTOImpl) then) =
      __$$EmployeeDetailsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String designation,
      String startDate,
      String? endDate});
}

/// @nodoc
class __$$EmployeeDetailsDTOImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsDTOCopyWithImpl<$Res, _$EmployeeDetailsDTOImpl>
    implements _$$EmployeeDetailsDTOImplCopyWith<$Res> {
  __$$EmployeeDetailsDTOImplCopyWithImpl(_$EmployeeDetailsDTOImpl _value,
      $Res Function(_$EmployeeDetailsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? designation = null,
    Object? startDate = null,
    Object? endDate = freezed,
  }) {
    return _then(_$EmployeeDetailsDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeDetailsDTOImpl extends _EmployeeDetailsDTO
    with DiagnosticableTreeMixin {
  const _$EmployeeDetailsDTOImpl(
      {required this.id,
      required this.name,
      required this.designation,
      required this.startDate,
      this.endDate})
      : super._();

  factory _$EmployeeDetailsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeDetailsDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String designation;
  @override
  final String startDate;
  @override
  final String? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeDetailsDTO(id: $id, name: $name, designation: $designation, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeDetailsDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeDetailsDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, designation, startDate, endDate);

  /// Create a copy of EmployeeDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDetailsDTOImplCopyWith<_$EmployeeDetailsDTOImpl> get copyWith =>
      __$$EmployeeDetailsDTOImplCopyWithImpl<_$EmployeeDetailsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeDetailsDTOImplToJson(
      this,
    );
  }
}

abstract class _EmployeeDetailsDTO extends EmployeeDetailsDTO {
  const factory _EmployeeDetailsDTO(
      {required final String id,
      required final String name,
      required final String designation,
      required final String startDate,
      final String? endDate}) = _$EmployeeDetailsDTOImpl;
  const _EmployeeDetailsDTO._() : super._();

  factory _EmployeeDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$EmployeeDetailsDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get designation;
  @override
  String get startDate;
  @override
  String? get endDate;

  /// Create a copy of EmployeeDetailsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeDetailsDTOImplCopyWith<_$EmployeeDetailsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
