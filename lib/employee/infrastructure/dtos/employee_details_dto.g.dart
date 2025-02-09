// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeDetailsDTOImpl _$$EmployeeDetailsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeDetailsDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$EmployeeDetailsDTOImplToJson(
        _$EmployeeDetailsDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'designation': instance.designation,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
