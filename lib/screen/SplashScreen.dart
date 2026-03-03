import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:whale/screen/HomeScreen.dart';
import 'package:whale/screen/login_screen.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    waveSound();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
    });
  }

  final AudioPlayer wave = new AudioPlayer();

  void waveSound() async {
    await wave.play(AssetSource('audio/wave2.mp3'));
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFABD1C6),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Image.asset('assets/images/whale.png', height: 120, width: 120,),
                SizedBox(width: 20),
                Text(
                  'WHALE',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'whalelowhlelow',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
               ],),
            ),
      ),
    );
  }
}
