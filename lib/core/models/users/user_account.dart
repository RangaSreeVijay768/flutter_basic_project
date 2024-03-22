import 'package:basic/core/models/common/base_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../common/converters/date_time_to_app_date_time_converter.dart';

part 'user_account.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserAccount extends BaseEntity {
  String? id;
  String? accountId;
  String? accountStatus;
  String? accountType;
  String? accountName;
  String? emailId;
  String? phoneNumber;
  String? firebaseUid;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountToJson(this);

  UserAccount(
      {this.id,
      this.accountId,
      this.accountStatus,
      this.accountType,
      this.accountName,
      this.emailId,
      this.phoneNumber,
      this.firebaseUid,
      super.createdTime,
      super.lastUpdatedTime});

  @override
  UserAccount copyWith(
      {String? id,
      String? accountId,
      String? accountStatus,
      String? accountType,
      String? accountName,
      String? emailId,
      String? phoneNumber,
      String? firebaseUid,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return UserAccount(
        id: id ?? this.id,
        accountId: accountId ?? this.accountId,
        accountStatus: accountStatus ?? this.accountStatus,
        accountType: accountType ?? this.accountType,
        accountName: accountName ?? this.accountName,
        emailId: emailId ?? this.emailId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        firebaseUid: firebaseUid ?? this.firebaseUid);
  }
}
