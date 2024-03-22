import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class AppDateTimeUtils {
  static DateFormat defaultTimeFormat = DateFormat.Hm();
  static DateFormat defaultTimeSerializableFormat =
      DateFormat("yyyy-MM-ddTHH:mm:ss");
  static DateFormat defaultDateFormat = DateFormat.yMd();
  static DateTime futureTime = DateTime.now().add(Duration(minutes: 5));

  static DateTime getEndTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }

  static DateTime getCurrentTimeOfDay() {
    return DateTime.now();
  }

  static DateTime getCurrentTimeOfDay1() {
    return futureTime;
  }

  static DateTime getStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static DateTime subtract(DateTime dateTime, Duration duration) {
    return dateTime.subtract(duration);
  }

  static DateTime add(DateTime dateTime, Duration duration) {
    return dateTime.add(duration);
  }

  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  static String formatDateToSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("yyyy-MM-ddTHH:mm:ss"));
  }

  static DateTime parseDateTimeFromSerializableString(String dateTimeString) {
    return parseDateTimeString(dateTimeString);
  }

  static String formatDateTimeToTimeSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("HH:mm:ss"));
  }

  static String formatDateTimeToDayTime(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("HH:mm"));
  }

  static DateTime parseTimeStringToDateTime(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static DateTime parseDateTimeString(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static String formatTimeOfDay(
      {required TimeOfDay timeOfDay, DateFormat? dateFormat}) {
    return formatDateTime(
        getDateTimeFromTimeOfDay(timeOfDay), dateFormat ?? defaultTimeFormat);
  }

  static DateTime getDateTimeFromTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    return DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  }

  static TimeOfDay getTimeOfDayFromDateTime(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  static double convertTimeOfDayToDouble(TimeOfDay timeOfDay) {
    return timeOfDay.hour + timeOfDay.minute / 60.0;
  }

  static double compareTimeOfDay(TimeOfDay a, TimeOfDay b) {
    return convertTimeOfDayToDouble(a) - convertTimeOfDayToDouble(b);
  }

  static Duration getDurationBetween(DateTime startTime, DateTime endTime) {
    return endTime.difference(startTime);
  }

  static String getDurationLeft(DateTime startDateTime, DateTime endDateTime) {
    Duration difference = endDateTime.difference(startDateTime);

    int hours = difference.inHours;
    int minutes = difference.inMinutes.remainder(60);
    int seconds = difference.inSeconds.remainder(60);

    String formattedDifference =
        '${hours.toString().padLeft(2, '0')}h:${minutes.toString().padLeft(2, '0')}m:${seconds.toString().padLeft(2, '0')}s';

    return formattedDifference;
  }

  static getMonthStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, 1, 0, 0, 0);
  }

  static getMonthEndTimeOfDateTime(DateTime dateTime) {
    DateTime montStartTime = getMonthStartTimeOfDateTime(dateTime);
    DateTime nextMonthStartTime = DateTime(
        dateTime.year, montStartTime.month + 1, montStartTime.day, 0, 0, 0);
    return getEndTimeOfDateTime(DateTime(nextMonthStartTime.year,
        nextMonthStartTime.month, nextMonthStartTime.day - 1));
  }
}
