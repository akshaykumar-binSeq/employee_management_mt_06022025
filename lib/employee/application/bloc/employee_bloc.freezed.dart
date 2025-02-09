// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'EmployeeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EmployeeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllEmployeeImplCopyWith<$Res> {
  factory _$$GetAllEmployeeImplCopyWith(_$GetAllEmployeeImpl value,
          $Res Function(_$GetAllEmployeeImpl) then) =
      __$$GetAllEmployeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$GetAllEmployeeImpl>
    implements _$$GetAllEmployeeImplCopyWith<$Res> {
  __$$GetAllEmployeeImplCopyWithImpl(
      _$GetAllEmployeeImpl _value, $Res Function(_$GetAllEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllEmployeeImpl implements _GetAllEmployee {
  const _$GetAllEmployeeImpl();

  @override
  String toString() {
    return 'EmployeeEvent.getAllEmployee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllEmployeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return getAllEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return getAllEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (getAllEmployee != null) {
      return getAllEmployee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return getAllEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return getAllEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (getAllEmployee != null) {
      return getAllEmployee(this);
    }
    return orElse();
  }
}

abstract class _GetAllEmployee implements EmployeeEvent {
  const factory _GetAllEmployee() = _$GetAllEmployeeImpl;
}

/// @nodoc
abstract class _$$AddOrEditEmployeeImplCopyWith<$Res> {
  factory _$$AddOrEditEmployeeImplCopyWith(_$AddOrEditEmployeeImpl value,
          $Res Function(_$AddOrEditEmployeeImpl) then) =
      __$$AddOrEditEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEdit});
}

/// @nodoc
class __$$AddOrEditEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$AddOrEditEmployeeImpl>
    implements _$$AddOrEditEmployeeImplCopyWith<$Res> {
  __$$AddOrEditEmployeeImplCopyWithImpl(_$AddOrEditEmployeeImpl _value,
      $Res Function(_$AddOrEditEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEdit = null,
  }) {
    return _then(_$AddOrEditEmployeeImpl(
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrEditEmployeeImpl implements _AddOrEditEmployee {
  const _$AddOrEditEmployeeImpl({required this.isEdit});

  @override
  final bool isEdit;

  @override
  String toString() {
    return 'EmployeeEvent.addOrEditEmployee(isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrEditEmployeeImpl &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEdit);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrEditEmployeeImplCopyWith<_$AddOrEditEmployeeImpl> get copyWith =>
      __$$AddOrEditEmployeeImplCopyWithImpl<_$AddOrEditEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return addOrEditEmployee(isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return addOrEditEmployee?.call(isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (addOrEditEmployee != null) {
      return addOrEditEmployee(isEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return addOrEditEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return addOrEditEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (addOrEditEmployee != null) {
      return addOrEditEmployee(this);
    }
    return orElse();
  }
}

abstract class _AddOrEditEmployee implements EmployeeEvent {
  const factory _AddOrEditEmployee({required final bool isEdit}) =
      _$AddOrEditEmployeeImpl;

  bool get isEdit;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrEditEmployeeImplCopyWith<_$AddOrEditEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeImplCopyWith<$Res> {
  factory _$$EditEmployeeImplCopyWith(
          _$EditEmployeeImpl value, $Res Function(_$EditEmployeeImpl) then) =
      __$$EditEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeDetails employeeDetails});

  $EmployeeDetailsCopyWith<$Res> get employeeDetails;
}

/// @nodoc
class __$$EditEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$EditEmployeeImpl>
    implements _$$EditEmployeeImplCopyWith<$Res> {
  __$$EditEmployeeImplCopyWithImpl(
      _$EditEmployeeImpl _value, $Res Function(_$EditEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeDetails = null,
  }) {
    return _then(_$EditEmployeeImpl(
      null == employeeDetails
          ? _value.employeeDetails
          : employeeDetails // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails,
    ));
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeDetailsCopyWith<$Res> get employeeDetails {
    return $EmployeeDetailsCopyWith<$Res>(_value.employeeDetails, (value) {
      return _then(_value.copyWith(employeeDetails: value));
    });
  }
}

/// @nodoc

class _$EditEmployeeImpl implements _EditEmployee {
  const _$EditEmployeeImpl(this.employeeDetails);

  @override
  final EmployeeDetails employeeDetails;

  @override
  String toString() {
    return 'EmployeeEvent.editEmployee(employeeDetails: $employeeDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeImpl &&
            (identical(other.employeeDetails, employeeDetails) ||
                other.employeeDetails == employeeDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeDetails);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      __$$EditEmployeeImplCopyWithImpl<_$EditEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return editEmployee(employeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return editEmployee?.call(employeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(employeeDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return editEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return editEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(this);
    }
    return orElse();
  }
}

abstract class _EditEmployee implements EmployeeEvent {
  const factory _EditEmployee(final EmployeeDetails employeeDetails) =
      _$EditEmployeeImpl;

  EmployeeDetails get employeeDetails;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeNameImplCopyWith<$Res> {
  factory _$$EditEmployeeNameImplCopyWith(_$EditEmployeeNameImpl value,
          $Res Function(_$EditEmployeeNameImpl) then) =
      __$$EditEmployeeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$EditEmployeeNameImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$EditEmployeeNameImpl>
    implements _$$EditEmployeeNameImplCopyWith<$Res> {
  __$$EditEmployeeNameImplCopyWithImpl(_$EditEmployeeNameImpl _value,
      $Res Function(_$EditEmployeeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditEmployeeNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditEmployeeNameImpl implements _EditEmployeeName {
  const _$EditEmployeeNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'EmployeeEvent.editEmployeeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmployeeNameImplCopyWith<_$EditEmployeeNameImpl> get copyWith =>
      __$$EditEmployeeNameImplCopyWithImpl<_$EditEmployeeNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return editEmployeeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return editEmployeeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployeeName != null) {
      return editEmployeeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return editEmployeeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return editEmployeeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployeeName != null) {
      return editEmployeeName(this);
    }
    return orElse();
  }
}

abstract class _EditEmployeeName implements EmployeeEvent {
  const factory _EditEmployeeName(final String name) = _$EditEmployeeNameImpl;

  String get name;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEmployeeNameImplCopyWith<_$EditEmployeeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeDetails emmployeeDetails});

  $EmployeeDetailsCopyWith<$Res> get emmployeeDetails;
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emmployeeDetails = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      null == emmployeeDetails
          ? _value.emmployeeDetails
          : emmployeeDetails // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails,
    ));
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeDetailsCopyWith<$Res> get emmployeeDetails {
    return $EmployeeDetailsCopyWith<$Res>(_value.emmployeeDetails, (value) {
      return _then(_value.copyWith(emmployeeDetails: value));
    });
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements _DeleteEmployee {
  const _$DeleteEmployeeImpl(this.emmployeeDetails);

  @override
  final EmployeeDetails emmployeeDetails;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(emmployeeDetails: $emmployeeDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.emmployeeDetails, emmployeeDetails) ||
                other.emmployeeDetails == emmployeeDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emmployeeDetails);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return deleteEmployee(emmployeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return deleteEmployee?.call(emmployeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(emmployeeDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeeEvent {
  const factory _DeleteEmployee(final EmployeeDetails emmployeeDetails) =
      _$DeleteEmployeeImpl;

  EmployeeDetails get emmployeeDetails;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UndoDeleteEmployeeImplCopyWith<$Res> {
  factory _$$UndoDeleteEmployeeImplCopyWith(_$UndoDeleteEmployeeImpl value,
          $Res Function(_$UndoDeleteEmployeeImpl) then) =
      __$$UndoDeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, EmployeeDetails emmployeeDetails});

  $EmployeeDetailsCopyWith<$Res> get emmployeeDetails;
}

/// @nodoc
class __$$UndoDeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$UndoDeleteEmployeeImpl>
    implements _$$UndoDeleteEmployeeImplCopyWith<$Res> {
  __$$UndoDeleteEmployeeImplCopyWithImpl(_$UndoDeleteEmployeeImpl _value,
      $Res Function(_$UndoDeleteEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? emmployeeDetails = null,
  }) {
    return _then(_$UndoDeleteEmployeeImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == emmployeeDetails
          ? _value.emmployeeDetails
          : emmployeeDetails // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails,
    ));
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeDetailsCopyWith<$Res> get emmployeeDetails {
    return $EmployeeDetailsCopyWith<$Res>(_value.emmployeeDetails, (value) {
      return _then(_value.copyWith(emmployeeDetails: value));
    });
  }
}

/// @nodoc

class _$UndoDeleteEmployeeImpl implements _UndoDeleteEmployee {
  const _$UndoDeleteEmployeeImpl(this.index, this.emmployeeDetails);

  @override
  final int index;
  @override
  final EmployeeDetails emmployeeDetails;

  @override
  String toString() {
    return 'EmployeeEvent.undoDeleteEmployee(index: $index, emmployeeDetails: $emmployeeDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndoDeleteEmployeeImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.emmployeeDetails, emmployeeDetails) ||
                other.emmployeeDetails == emmployeeDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, emmployeeDetails);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UndoDeleteEmployeeImplCopyWith<_$UndoDeleteEmployeeImpl> get copyWith =>
      __$$UndoDeleteEmployeeImplCopyWithImpl<_$UndoDeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllEmployee,
    required TResult Function(bool isEdit) addOrEditEmployee,
    required TResult Function(EmployeeDetails employeeDetails) editEmployee,
    required TResult Function(String name) editEmployeeName,
    required TResult Function(EmployeeDetails emmployeeDetails) deleteEmployee,
    required TResult Function(int index, EmployeeDetails emmployeeDetails)
        undoDeleteEmployee,
  }) {
    return undoDeleteEmployee(index, emmployeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllEmployee,
    TResult? Function(bool isEdit)? addOrEditEmployee,
    TResult? Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult? Function(String name)? editEmployeeName,
    TResult? Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult? Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
  }) {
    return undoDeleteEmployee?.call(index, emmployeeDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllEmployee,
    TResult Function(bool isEdit)? addOrEditEmployee,
    TResult Function(EmployeeDetails employeeDetails)? editEmployee,
    TResult Function(String name)? editEmployeeName,
    TResult Function(EmployeeDetails emmployeeDetails)? deleteEmployee,
    TResult Function(int index, EmployeeDetails emmployeeDetails)?
        undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (undoDeleteEmployee != null) {
      return undoDeleteEmployee(index, emmployeeDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllEmployee value) getAllEmployee,
    required TResult Function(_AddOrEditEmployee value) addOrEditEmployee,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_EditEmployeeName value) editEmployeeName,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UndoDeleteEmployee value) undoDeleteEmployee,
  }) {
    return undoDeleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllEmployee value)? getAllEmployee,
    TResult? Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_EditEmployeeName value)? editEmployeeName,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
  }) {
    return undoDeleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllEmployee value)? getAllEmployee,
    TResult Function(_AddOrEditEmployee value)? addOrEditEmployee,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_EditEmployeeName value)? editEmployeeName,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UndoDeleteEmployee value)? undoDeleteEmployee,
    required TResult orElse(),
  }) {
    if (undoDeleteEmployee != null) {
      return undoDeleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _UndoDeleteEmployee implements EmployeeEvent {
  const factory _UndoDeleteEmployee(
          final int index, final EmployeeDetails emmployeeDetails) =
      _$UndoDeleteEmployeeImpl;

  int get index;
  EmployeeDetails get emmployeeDetails;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UndoDeleteEmployeeImplCopyWith<_$UndoDeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  EmployeeDetails get empployeeForm => throw _privateConstructorUsedError;
  TextEditingController get employeeNameController =>
      throw _privateConstructorUsedError;
  List<EmployeeDetails> get currentEmployees =>
      throw _privateConstructorUsedError;
  List<EmployeeDetails> get previousEmployees =>
      throw _privateConstructorUsedError;
  List<EmployeeDetails> get allEmployees => throw _privateConstructorUsedError;
  Option<Either<AppFailures, List<EmployeeDetails>>>
      get getAllEmployeesFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<AppFailures, Unit>>
      get addOrEditEmployeeFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<AppFailures, Unit>> get deleteEmployeeFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitting,
      bool showErrorMessages,
      EmployeeDetails empployeeForm,
      TextEditingController employeeNameController,
      List<EmployeeDetails> currentEmployees,
      List<EmployeeDetails> previousEmployees,
      List<EmployeeDetails> allEmployees,
      Option<Either<AppFailures, List<EmployeeDetails>>>
          getAllEmployeesFailureOrSuccessOption,
      Option<Either<AppFailures, Unit>> addOrEditEmployeeFailureOrSuccessOption,
      Option<Either<AppFailures, Unit>> deleteEmployeeFailureOrSuccessOption});

  $EmployeeDetailsCopyWith<$Res> get empployeeForm;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? empployeeForm = null,
    Object? employeeNameController = null,
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? allEmployees = null,
    Object? getAllEmployeesFailureOrSuccessOption = null,
    Object? addOrEditEmployeeFailureOrSuccessOption = null,
    Object? deleteEmployeeFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      empployeeForm: null == empployeeForm
          ? _value.empployeeForm
          : empployeeForm // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails,
      employeeNameController: null == employeeNameController
          ? _value.employeeNameController
          : employeeNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      currentEmployees: null == currentEmployees
          ? _value.currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      previousEmployees: null == previousEmployees
          ? _value.previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      allEmployees: null == allEmployees
          ? _value.allEmployees
          : allEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      getAllEmployeesFailureOrSuccessOption: null ==
              getAllEmployeesFailureOrSuccessOption
          ? _value.getAllEmployeesFailureOrSuccessOption
          : getAllEmployeesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, List<EmployeeDetails>>>,
      addOrEditEmployeeFailureOrSuccessOption: null ==
              addOrEditEmployeeFailureOrSuccessOption
          ? _value.addOrEditEmployeeFailureOrSuccessOption
          : addOrEditEmployeeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, Unit>>,
      deleteEmployeeFailureOrSuccessOption: null ==
              deleteEmployeeFailureOrSuccessOption
          ? _value.deleteEmployeeFailureOrSuccessOption
          : deleteEmployeeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, Unit>>,
    ) as $Val);
  }

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeDetailsCopyWith<$Res> get empployeeForm {
    return $EmployeeDetailsCopyWith<$Res>(_value.empployeeForm, (value) {
      return _then(_value.copyWith(empployeeForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeStateImplCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$EmployeeStateImplCopyWith(
          _$EmployeeStateImpl value, $Res Function(_$EmployeeStateImpl) then) =
      __$$EmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSubmitting,
      bool showErrorMessages,
      EmployeeDetails empployeeForm,
      TextEditingController employeeNameController,
      List<EmployeeDetails> currentEmployees,
      List<EmployeeDetails> previousEmployees,
      List<EmployeeDetails> allEmployees,
      Option<Either<AppFailures, List<EmployeeDetails>>>
          getAllEmployeesFailureOrSuccessOption,
      Option<Either<AppFailures, Unit>> addOrEditEmployeeFailureOrSuccessOption,
      Option<Either<AppFailures, Unit>> deleteEmployeeFailureOrSuccessOption});

  @override
  $EmployeeDetailsCopyWith<$Res> get empployeeForm;
}

/// @nodoc
class __$$EmployeeStateImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EmployeeStateImpl>
    implements _$$EmployeeStateImplCopyWith<$Res> {
  __$$EmployeeStateImplCopyWithImpl(
      _$EmployeeStateImpl _value, $Res Function(_$EmployeeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? empployeeForm = null,
    Object? employeeNameController = null,
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? allEmployees = null,
    Object? getAllEmployeesFailureOrSuccessOption = null,
    Object? addOrEditEmployeeFailureOrSuccessOption = null,
    Object? deleteEmployeeFailureOrSuccessOption = null,
  }) {
    return _then(_$EmployeeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      empployeeForm: null == empployeeForm
          ? _value.empployeeForm
          : empployeeForm // ignore: cast_nullable_to_non_nullable
              as EmployeeDetails,
      employeeNameController: null == employeeNameController
          ? _value.employeeNameController
          : employeeNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      currentEmployees: null == currentEmployees
          ? _value._currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      previousEmployees: null == previousEmployees
          ? _value._previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      allEmployees: null == allEmployees
          ? _value._allEmployees
          : allEmployees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetails>,
      getAllEmployeesFailureOrSuccessOption: null ==
              getAllEmployeesFailureOrSuccessOption
          ? _value.getAllEmployeesFailureOrSuccessOption
          : getAllEmployeesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, List<EmployeeDetails>>>,
      addOrEditEmployeeFailureOrSuccessOption: null ==
              addOrEditEmployeeFailureOrSuccessOption
          ? _value.addOrEditEmployeeFailureOrSuccessOption
          : addOrEditEmployeeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, Unit>>,
      deleteEmployeeFailureOrSuccessOption: null ==
              deleteEmployeeFailureOrSuccessOption
          ? _value.deleteEmployeeFailureOrSuccessOption
          : deleteEmployeeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$EmployeeStateImpl implements _EmployeeState {
  const _$EmployeeStateImpl(
      {required this.isLoading,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.empployeeForm,
      required this.employeeNameController,
      required final List<EmployeeDetails> currentEmployees,
      required final List<EmployeeDetails> previousEmployees,
      required final List<EmployeeDetails> allEmployees,
      required this.getAllEmployeesFailureOrSuccessOption,
      required this.addOrEditEmployeeFailureOrSuccessOption,
      required this.deleteEmployeeFailureOrSuccessOption})
      : _currentEmployees = currentEmployees,
        _previousEmployees = previousEmployees,
        _allEmployees = allEmployees;

  @override
  final bool isLoading;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final EmployeeDetails empployeeForm;
  @override
  final TextEditingController employeeNameController;
  final List<EmployeeDetails> _currentEmployees;
  @override
  List<EmployeeDetails> get currentEmployees {
    if (_currentEmployees is EqualUnmodifiableListView)
      return _currentEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployees);
  }

  final List<EmployeeDetails> _previousEmployees;
  @override
  List<EmployeeDetails> get previousEmployees {
    if (_previousEmployees is EqualUnmodifiableListView)
      return _previousEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployees);
  }

  final List<EmployeeDetails> _allEmployees;
  @override
  List<EmployeeDetails> get allEmployees {
    if (_allEmployees is EqualUnmodifiableListView) return _allEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEmployees);
  }

  @override
  final Option<Either<AppFailures, List<EmployeeDetails>>>
      getAllEmployeesFailureOrSuccessOption;
  @override
  final Option<Either<AppFailures, Unit>>
      addOrEditEmployeeFailureOrSuccessOption;
  @override
  final Option<Either<AppFailures, Unit>> deleteEmployeeFailureOrSuccessOption;

  @override
  String toString() {
    return 'EmployeeState(isLoading: $isLoading, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, empployeeForm: $empployeeForm, employeeNameController: $employeeNameController, currentEmployees: $currentEmployees, previousEmployees: $previousEmployees, allEmployees: $allEmployees, getAllEmployeesFailureOrSuccessOption: $getAllEmployeesFailureOrSuccessOption, addOrEditEmployeeFailureOrSuccessOption: $addOrEditEmployeeFailureOrSuccessOption, deleteEmployeeFailureOrSuccessOption: $deleteEmployeeFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.empployeeForm, empployeeForm) ||
                other.empployeeForm == empployeeForm) &&
            (identical(other.employeeNameController, employeeNameController) ||
                other.employeeNameController == employeeNameController) &&
            const DeepCollectionEquality()
                .equals(other._currentEmployees, _currentEmployees) &&
            const DeepCollectionEquality()
                .equals(other._previousEmployees, _previousEmployees) &&
            const DeepCollectionEquality()
                .equals(other._allEmployees, _allEmployees) &&
            (identical(other.getAllEmployeesFailureOrSuccessOption,
                    getAllEmployeesFailureOrSuccessOption) ||
                other.getAllEmployeesFailureOrSuccessOption ==
                    getAllEmployeesFailureOrSuccessOption) &&
            (identical(other.addOrEditEmployeeFailureOrSuccessOption,
                    addOrEditEmployeeFailureOrSuccessOption) ||
                other.addOrEditEmployeeFailureOrSuccessOption ==
                    addOrEditEmployeeFailureOrSuccessOption) &&
            (identical(other.deleteEmployeeFailureOrSuccessOption,
                    deleteEmployeeFailureOrSuccessOption) ||
                other.deleteEmployeeFailureOrSuccessOption ==
                    deleteEmployeeFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSubmitting,
      showErrorMessages,
      empployeeForm,
      employeeNameController,
      const DeepCollectionEquality().hash(_currentEmployees),
      const DeepCollectionEquality().hash(_previousEmployees),
      const DeepCollectionEquality().hash(_allEmployees),
      getAllEmployeesFailureOrSuccessOption,
      addOrEditEmployeeFailureOrSuccessOption,
      deleteEmployeeFailureOrSuccessOption);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required final bool isLoading,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final EmployeeDetails empployeeForm,
      required final TextEditingController employeeNameController,
      required final List<EmployeeDetails> currentEmployees,
      required final List<EmployeeDetails> previousEmployees,
      required final List<EmployeeDetails> allEmployees,
      required final Option<Either<AppFailures, List<EmployeeDetails>>>
          getAllEmployeesFailureOrSuccessOption,
      required final Option<Either<AppFailures, Unit>>
          addOrEditEmployeeFailureOrSuccessOption,
      required final Option<Either<AppFailures, Unit>>
          deleteEmployeeFailureOrSuccessOption}) = _$EmployeeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  EmployeeDetails get empployeeForm;
  @override
  TextEditingController get employeeNameController;
  @override
  List<EmployeeDetails> get currentEmployees;
  @override
  List<EmployeeDetails> get previousEmployees;
  @override
  List<EmployeeDetails> get allEmployees;
  @override
  Option<Either<AppFailures, List<EmployeeDetails>>>
      get getAllEmployeesFailureOrSuccessOption;
  @override
  Option<Either<AppFailures, Unit>> get addOrEditEmployeeFailureOrSuccessOption;
  @override
  Option<Either<AppFailures, Unit>> get deleteEmployeeFailureOrSuccessOption;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
