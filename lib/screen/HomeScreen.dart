import 'package:flutter/material.dart';
import 'package:whale/screen/LearnScreen.dart';
import 'package:whale/screen/Profilescreen.dart';
import 'package:whale/screen/SongScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final ScrollController _controller = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _learnKey = GlobalKey();

  void _scrollToSection(int index) {
    final keys = [_homeKey, _learnKey];
    final ctx = keys[index].currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 2:
        return const SongsScreen();
      case 3:
        return const ProfileScreen();
      default:
        // Index 0 (Home) dan 1 (Learn) → scroll view
        return SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              KeyedSubtree(key: _homeKey, child: const _HomeContent()),
              KeyedSubtree(key: _learnKey, child: const LearnScreen()),
            ],
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: (_currentIndex == 0 || _currentIndex == 1)
          ? AppBar(
              title: const Text(
                'Welcome back',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 87, 72),
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.white,
              actions: const [
                ImageIcon(AssetImage('assets/images/wave-sound.png'), size: 30),
                SizedBox(width: 20),
              ],
            )
          : null,
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);

          // Hanya scroll kalau index 0 atau 1 (Home/Learn)
          if (index == 0 || index == 1) {
            // Pastikan scroll view sudah render dulu
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToSection(index);
            });
          }
        },
        selectedItemColor: const Color(0xFFABD1C6),
        unselectedItemColor: const Color.fromARGB(255, 128, 128, 128),
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

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/anime.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    'Discover the world of whales',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Explore the fascinating world of whales...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
