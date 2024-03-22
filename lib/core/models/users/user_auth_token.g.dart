// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuthToken _$UserAuthTokenFromJson(Map<String, dynamic> json) =>
    UserAuthToken(
      status: json['status'] as String,
      userAccount:
          UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      userAuthToken: json['user_auth_token'] as String,
      userAuthTokenId: json['user_auth_token_id'] as String,
    );

Map<String, dynamic> _$UserAuthTokenToJson(UserAuthToken instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user_account': instance.userAccount,
      'user_auth_token': instance.userAuthToken,
      'user_auth_token_id': instance.userAuthTokenId,
    };
