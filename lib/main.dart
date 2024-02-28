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
          apiKey: "AIzaSyBTSEJrN872H68zpiSz_1PyqCtpud4CVgU",
          authDomain: "altazajlogin-dec6f.firebaseapp.com",
          projectId: "altazajlogin-dec6f",
          storageBucket: "altazajlogin-dec6f.appspot.com",
          messagingSenderId: "749536571314",
          appId: "1:749536571314:web:c2747bb4cc2e4dc8383eab"),
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
