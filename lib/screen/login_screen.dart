import 'package:flutter/material.dart';
import 'package:whale/screen/HomeScreen.dart';
import 'package:whale/screen/signIn_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailControl = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color(0xFFABD1C6),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset( 'assets/images/whale.png', height: 120, width: 120,),
              SizedBox(width: 30),
              Text(
                "Login Page",
                style: TextStyle(
                  color: Color.fromARGB(255, 98, 98, 98),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 400,
                height: 70,
                child: TextField(
                  controller: emailControl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
              ),
              SizedBox(
                width: 400,
                height: 70,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  String email = emailControl.text;
                  if (email.contains('@') && email.contains('.')) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen()),
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
                child: Text("Login"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account?"),
                  TextButton(
                    onPressed: () {
                      // (_) => SigninScreen();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SigninScreen()),
                      );
                    },
                    child: Text("Register"),
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
