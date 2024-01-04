import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mad_final_paper/pages/addDish.dart';
import 'package:mad_final_paper/pages/carts_list.dart';
import 'package:mad_final_paper/pages/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() {
//   runApp(const MyApp());
// }

// void main() => runApp(
//   DevicePreview(
//     enabled: true,
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBymrdsZN9dt_-1dwK15xcNbtzEleX47ZY",
        appId: "1:601027693371:android:94571b1744487d9f8e451e",
        messagingSenderId: "601027693371",
        projectId: "fir-project-887d8",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: loginPageConfiguration(),
    );
  }
}
