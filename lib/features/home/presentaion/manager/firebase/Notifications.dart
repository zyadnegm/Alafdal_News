import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class Firebase_Notifications{
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;


  Future<void> initNotifications() async{
    await messaging.requestPermission();
    String? token=await messaging.getToken();
    print("token : $token");

  }

  Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {

    await Firebase.initializeApp();

    print("Handling a background message: ${message.messageId}");
  }
  // Future<void> foreground_messages()async {
  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //
  //     if (notification != null && android != null) {
  //       String title = message.data['title'] ?? notification.title ?? 'Notification';
  //       String body = message.data['body'] ?? notification.body ?? '';
  //
  //       flutterLocalNotificationsPlugin.show(
  //         notification.hashCode,
  //         title,
  //         body,
  //         NotificationDetails(
  //           android: AndroidNotificationDetails(
  //             channel.id,
  //             channel.name,
  //             icon: 'launch_background',
  //           ),
  //         ),
  //       );
  //     }
  //   });
  // }




}