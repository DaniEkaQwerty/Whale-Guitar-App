import 'package:flutter/material.dart';
// import 'package:whale/screen/HomeScreen.dart';
import 'package:whale/screen/login_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControl = TextEditingController();
    return Scaffold(
      body: Container(
        color: const Color(0xFFABD1C6),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/wave-white.png', height: 120, width: 120),
              SizedBox(width: 30),
              Text(
                "Sign In Page",
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 128, 95),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Tambahkan ini
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name"),
                      SizedBox(height: 20),
                      Text("Last Name"),
                      SizedBox(height: 20),
                      Text("Username"),
                      SizedBox(height: 20),
                      Text("Password"),
                      SizedBox(height: 20),
                      Text("Confirm Password"),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(":"),
                      SizedBox(height: 20),
                      Text(":"),
                      SizedBox(height: 20),
                      Text(":"),
                      SizedBox(height: 20),
                      Text(":"),
                      SizedBox(height: 20),
                      Text(":"),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 285,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(isDense: true),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 285,
                        height: 20,
                        child: TextField(
                          decoration: InputDecoration(isDense: true),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 285,
                        height: 20,
                        child: TextField(
                          controller: emailControl,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(isDense: true),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 285,
                        height: 20,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(isDense: true),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 285,
                        height: 20,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(isDense: true),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  String email = emailControl.text;
                  if (email.contains('@') && email.contains('.')) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                            "Format email salah!",
                            style: TextStyle(fontSize: 15),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Center(child: Text("OK")),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  fixedSize: Size(400, 10),
                ),
                child: Text("Register"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an Account?"),
                  TextButton(
                    onPressed: () {
                      // (_) => SigninScreen();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
