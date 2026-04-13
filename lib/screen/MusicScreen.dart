import 'package:flutter/material.dart';

class Musicscreen extends StatelessWidget {
  const Musicscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFABD1C6),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Image.asset('assets/images/wave-white.png', height: 120, width: 120,),
                SizedBox(width: 20),
                Text(
                  'WAVE',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Find your wave, find your vibe',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
               ],),
            ),
      ),
    );
  }
}