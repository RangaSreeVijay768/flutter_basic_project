// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:beebloom_water_tracker/app/core/constants/notification_constants.dart';
// import 'package:beebloom_water_tracker/app/core/logger/log.dart';
// import 'package:beebloom_water_tracker/app/themes/app_colors.dart';
// import 'package:beebloom_water_tracker/app/themes/fonts.dart';
// import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';
//
// @singleton
// class AwesomeNotificationsService {
//   static initialize() {
//     AwesomeNotifications().initialize(
//         // set the icon to null if you want to use the default app icon
//         'resource://drawable/splash',
//         [
//           NotificationChannel(
//               channelGroupKey: AppNotificationConstants.defaultChannelGroup,
//               channelKey: AppNotificationConstants.defaultChannelKey,
//               channelName: AppNotificationConstants.defaultChannelName,
//               channelDescription:
//                   AppNotificationConstants.defaultChannelDescription,
//               defaultColor: AppNotificationConstants.defaultColor,
//               ledColor: AppNotificationConstants.ledColor)
//         ],
//         // Channel groups are only visual and are not required
//         channelGroups: [
//           AppNotificationConstants.createChannelGroup(
//               AppNotificationConstants.defaultChannelGroup,
//               AppNotificationConstants.defaultChannelGroupName)
//         ],
//         debug: true);
//   }
//
//   Future<bool> createNotification({
//     required BuildContext context,
//     required NotificationContent content,
//     NotificationSchedule? schedule,
//     List<NotificationActionButton>? actionButtons,
//     Map<String, NotificationLocalization>? localizations,
//   }) async {
//     List<NotificationPermission> hasPermissions =
//         await checkNotificationPermissions(
//             channelKey: AppNotificationConstants.defaultChannelKey,
//             permissionList:
//                 AppNotificationConstants.neededNotificationPermissions);
//     if (hasPermissions.length ==
//         AppNotificationConstants.neededNotificationPermissions.length) {
//       return AwesomeNotifications().createNotification(
//
//           content: content,
//           schedule: schedule,
//           actionButtons: actionButtons,
//           localizations: localizations);
//     } else {
//       await requestUserPermissions(context,
//           channelKey: AppNotificationConstants.defaultChannelKey,
//           permissionList:
//               AppNotificationConstants.neededNotificationPermissions);
//       return AwesomeNotifications().createNotification(
//           content: content,
//           schedule: schedule,
//           actionButtons: actionButtons,
//           localizations: localizations);
//     }
//   }
//
//   Future<void> createNotificationWithActionButtons(
//       {required BuildContext context}) async {
//     final content = NotificationContent(
//       id: 1,
//       channelKey: AppNotificationConstants.defaultChannelKey,
//       title: 'Notification Title',
//       body: 'Notification Body',
//     );
//
//     final actionButtons = [
//       NotificationActionButton(
//         key: AppNotificationConstants.yesActionKey,
//         label: 'Yes',
//       ),
//       NotificationActionButton(
//         key: AppNotificationConstants.noActionKey,
//         label: 'No',
//       ),
//     ];
//
//     await createNotification(
//       context: context,
//       content: content,
//       actionButtons: actionButtons,
//     );
//   }
//
//   Future<void> cancelNotification(int notificationId) {
//     return AwesomeNotifications().cancel(notificationId);
//   }
//
//   static Future<List<NotificationPermission>> checkNotificationPermissions(
//       {
// // if you only intends to request the permissions until app level, set the channelKey value to null
//       String? channelKey,
//       required List<NotificationPermission> permissionList}) async {
//     List<NotificationPermission> permissionsAllowed =
//         await AwesomeNotifications().checkPermissionList(
//             channelKey: channelKey, permissions: permissionList);
//
//     return permissionsAllowed;
//   }
//
//   static Future<List<NotificationPermission>> requestUserPermissions(
//       BuildContext context,
//       {
// // if you only intends to request the permissions until app level, set the channelKey value to null
//       required String? channelKey,
//       required List<NotificationPermission> permissionList}) async {
// // Check which of the permissions you need are allowed at this time
//     List<NotificationPermission> permissionsAllowed =
//         await AwesomeNotifications().checkPermissionList(
//             channelKey: channelKey, permissions: permissionList);
//
//     logger.d(permissionList);
// // If all permissions are allowed, there is nothing to do
//     if (permissionsAllowed.length == permissionList.length)
//       return permissionsAllowed;
//
// // Refresh the permission list with only the disallowed permissions
//     List<NotificationPermission> permissionsNeeded =
//         permissionList.toSet().difference(permissionsAllowed.toSet()).toList();
//
// // Check if some of the permissions needed request user's intervention to be enabled
//     List<NotificationPermission> lockedPermissions =
//         await AwesomeNotifications().shouldShowRationaleToRequest(
//             channelKey: channelKey, permissions: permissionsNeeded);
//
// // If there is no permissions depending on user's intervention, so request it directly
//     if (lockedPermissions.isEmpty) {
// // Request the permission through native resources.
//       await AwesomeNotifications().requestPermissionToSendNotifications(
//           channelKey: channelKey, permissions: permissionsNeeded);
//
// // After the user come back, check if the permissions has successfully enabled
//       permissionsAllowed = await AwesomeNotifications().checkPermissionList(
//           channelKey: channelKey, permissions: permissionsNeeded);
//     } else {
// // If you need to show a rationale to educate the user to conceived the permission, show it
//       await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//                 backgroundColor: AppColors.white,
//                 title: const Text(
//                   'Beebloom water tracker needs your permission',
//                   textAlign: TextAlign.center,
//                   maxLines: 2,
//                   style: TextStyle(fontSize: Fonts.fontSize22, fontWeight: Fonts.f600),
//                 ),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Image.asset(
//                       'images/animated-clock.gif',
//                       height: MediaQuery.of(context).size.height * 0.3,
//                       fit: BoxFit.fitWidth,
//                     ),
//                     Text(
//                       'To proceed, you need to enable the permissions above${channelKey?.isEmpty ?? true ? '' : ' on channel $channelKey'}:',
//                       maxLines: 2,
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       lockedPermissions
//                           .join(', ')
//                           .replaceAll('NotificationPermission.', ''),
//                       maxLines: 2,
//                       textAlign: TextAlign.center,
//                       style:
//                           TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//                 actions: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(child: TextButton(
//                         style: TextButton.styleFrom(foregroundColor: AppColors.textRed),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text(
//                             'Deny',
//                             style: TextStyle(color: Colors.red, fontSize: 18),
//                           )),),
//                       Expanded(child: TextButton(
//                         onPressed: () async {
// // Request the permission through native resources. Only one page redirection is done at this point.
//                           await AwesomeNotifications()
//                               .requestPermissionToSendNotifications(
//                               channelKey: channelKey,
//                               permissions: lockedPermissions);
//
// // After the user come back, check if the permissions has successfully enabled
//                           permissionsAllowed = await AwesomeNotifications()
//                               .checkPermissionList(
//                               channelKey: channelKey,
//                               permissions: lockedPermissions);
//
//                           Navigator.pop(context);
//                         },
//                         child: const Text(
//                           'Allow',
//                           style: TextStyle(
//                               color: AppColors.bgPrimary2,
//                               fontSize: Fonts.fontSize18,
//                               fontWeight: Fonts.f700),
//                         ),
//                       )),
//                     ],
//                   )
//                 ],
//               ));
//     }
//
// // Return the updated list of allowed permissions
//     return permissionsAllowed;
//   }
// }
