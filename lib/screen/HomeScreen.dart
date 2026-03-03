import 'package:flutter/material.dart';
import 'package:whale/screen/SplashScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  int _currentIndex = 0;

  void scrollTo(double position) {
    _controller.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Welcome back'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          ImageIcon(AssetImage('assets/images/whale.png'), size: 30),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  // image: AssetImage('assets/images/image.png'),
                  image: AssetImage('assets/images/anime.jpg'),

                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.teal, width: 2),
              ),
            ),
            Container(
              height: 300,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Discover the world of whales',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Explore the fascinating world of whales with our app. Learn about different species, their habitats, and conservation efforts.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Splash()),
                      );
                    },
                    child: Text('Go to Splash'),
                  ),
                ],
              ),
            ),
            Container(
              height: 900,
            ),
            // Container(
            //   height: 300,
            // ),
            // Container(
            //   height: 300,
            // ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          scrollTo(index * 300);
        },

        selectedItemColor: Color(0xFFABD1C6),
        unselectedItemColor: Color.fromARGB(255, 128, 128, 128),

        type: BottomNavigationBarType.fixed,

        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Learn',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Songs'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
