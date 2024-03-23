import 'package:json_annotation/json_annotation.dart';

part 'paginated_request.g.dart';

@JsonSerializable()
class PaginatedRequest {
  int? first;
  int? count;

  PaginatedRequest({this.first, this.count});

  factory PaginatedRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginatedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedRequestToJson(this);
}
