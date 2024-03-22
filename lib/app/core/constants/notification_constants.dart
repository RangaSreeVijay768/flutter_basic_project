// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:flutter/material.dart';
//
// class AppNotificationConstants {
//   static String defaultChannelKey = "default_channel";
//   static String defaultChannelGroup = "defaultChannelGroup";
//   static String defaultChannelGroupName = "defaultChannelGroupName";
//   static String defaultChannelName = "Basic notifications";
//   static String defaultChannelDescription =
//       "Notification channel for basic tests";
//   static Color defaultColor = Color(0xFF9D50DD);
//   static Color ledColor = Colors.white;
//   static String yesActionKey = "action_yes";
//   static String noActionKey = "action_no";
//
//   static List<NotificationPermission> neededNotificationPermissions =
//       NotificationPermission.values
//           .toSet()
//           .difference(Set.of([
//             NotificationPermission.Provisional,
//             NotificationPermission.Car,
//             NotificationPermission.CriticalAlert,
//             NotificationPermission.OverrideDnD
//           ]))
//           .toList(growable: false);
//
//   static NotificationChannelGroup createChannelGroup(
//       String channelGroupKey, String channelGroupName) {
//     return NotificationChannelGroup(
//         channelGroupKey: channelGroupKey, channelGroupName: channelGroupName);
//   }
// }
