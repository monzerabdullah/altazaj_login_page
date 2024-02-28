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
        apiKey: "AIzaSyBRUVPTXHAuxNNOu4ZWDTY82PnhcsJTA84",
        authDomain: "altazajlogin.firebaseapp.com",
        projectId: "altazajlogin",
        storageBucket: "altazajlogin.appspot.com",
        messagingSenderId: "759635313955",
        appId: "1:759635313955:web:a22b2b87b05f24d57ab896",
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
