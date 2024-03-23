// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sorted_paginated_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortedPaginatedRequest _$SortedPaginatedRequestFromJson(
        Map<String, dynamic> json) =>
    SortedPaginatedRequest(
      columnName: json['column_name'] as String?,
      columnOrder: json['column_order'] as String?,
      first: json['first'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$SortedPaginatedRequestToJson(
        SortedPaginatedRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
    };
