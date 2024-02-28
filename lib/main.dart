import 'package:altazaj_login/views/screens/login_view.dart';
import 'package:altazaj_login/views/widgets/centered_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDnwl7AAyGHKSJxEDMPUJpRxzJXI07JrnU",
        authDomain: "altazag.firebaseapp.com",
        projectId: "altazag",
        storageBucket: "altazag.appspot.com",
        messagingSenderId: "783416128659",
        appId: "1:783416128659:web:d3ddda7a774fd0cafe8966",
        measurementId: "G-XCYN9GXKD4",
      ),
    );
  } else {
    Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Tazaj Company',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CenteredView(
        child: LoginView(),
      ),
    );
  }
}
