import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBibbeOTKWFxR_8qwekfKp1Vko5rvNkw4o",
            authDomain: "crud-app-3855c.firebaseapp.com",
            projectId: "crud-app-3855c",
            storageBucket: "crud-app-3855c.appspot.com",
            messagingSenderId: "786269969157",
            appId: "1:786269969157:web:e27bac1315c60706ccf56c",
            measurementId: "G-P0H3373R7B"));
  } else {
    await Firebase.initializeApp();
  }
}
