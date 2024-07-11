import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Firebase_Messeging{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void>initnotification()async {
   await messaging.requestPermission();
   String? token=await messaging.getToken();
   print("Token : $token");
  }
  Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();

    print("Handling a background message: ${message.messageId}");
  }



}