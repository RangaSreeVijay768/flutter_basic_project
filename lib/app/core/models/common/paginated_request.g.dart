// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRequest _$PaginatedRequestFromJson(Map<String, dynamic> json) =>
    PaginatedRequest(
      first: json['first'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PaginatedRequestToJson(PaginatedRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
    };
