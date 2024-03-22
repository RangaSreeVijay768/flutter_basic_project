import 'package:basic/core/models/users/user_account.dart';

import 'package:json_annotation/json_annotation.dart';

part 'user_auth_token.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserAuthToken {
  // int createdTime;
  // int expiresAt;
  // int lastUpdatedTime;
  String status;
  UserAccount userAccount;
  String userAuthToken;
  String userAuthTokenId;


  factory UserAuthToken.fromJson(Map<String, dynamic> json) =>
      _$UserAuthTokenFromJson(json);

  Map<String, dynamic> toJson() => _$UserAuthTokenToJson(this);

  UserAuthToken({
    required this.status,
    required this.userAccount,
    required this.userAuthToken,
    required this.userAuthTokenId,
  });

}
