import 'package:basic/app/core/models/common/paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'sorted_paginated_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SortedPaginatedRequest extends PaginatedRequest {
  String? columnName;
  String? columnOrder;

  SortedPaginatedRequest(
      {this.columnName, this.columnOrder, super.first, super.count});

  factory SortedPaginatedRequest.fromJson(Map<String, dynamic> json) =>
      _$SortedPaginatedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SortedPaginatedRequestToJson(this);
}
