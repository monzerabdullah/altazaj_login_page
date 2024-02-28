import 'package:altazaj_login/views/widgets/centered_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  var emailAddressController = TextEditingController();

  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: CenteredView(
            child: Column(
              children: [
                Image.asset('assets/images/logo.jpeg'),
                const SizedBox(height: 25),
                const Text(
                  'AL TAZAJ COMPANY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF47E2F),
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  controller: emailAddressController,
                  cursorColor: const Color(0xFF158780),
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Color(0xFF158780),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  cursorColor: const Color(0xFF158780),
                  decoration: InputDecoration(
                    hintText: 'Computer Login Name',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Color(0xFF158780),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                TextField(
                  controller: passwordController,
                  cursorColor: const Color(0xFF158780),
                  decoration: InputDecoration(
                    hintText: 'Computer Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey[400]!,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Color(0xFF158780),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailAddressController.text,
                        password: passwordController.text,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        debugPrint(
                            'The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF158780),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'Login to internet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
