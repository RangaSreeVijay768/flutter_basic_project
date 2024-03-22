import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/app_date_time_utils.dart';

class DateTimeToIsoConverter implements JsonConverter<DateTime?, String> {
  const DateTimeToIsoConverter();

  @override
  DateTime? fromJson(String json) {
    try {
      return AppDateTimeUtils.parseTimeStringToDateTime(json);
    } catch (e) {
      return null;
    }
  }

  @override
  String toJson(DateTime? object) {
    if (object != null) {
      return AppDateTimeUtils.formatDateToSerializableString(object);
    }
    return "";
  }
}
