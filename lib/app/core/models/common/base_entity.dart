import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'converters/date_time_to_app_date_time_converter.dart';

part 'base_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BaseEntity {
  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);

  @DateTimeToIsoConverter()
  DateTime? createdTime;
  @DateTimeToIsoConverter()
  DateTime? lastUpdatedTime;

  BaseEntity({this.createdTime, this.lastUpdatedTime});
}
