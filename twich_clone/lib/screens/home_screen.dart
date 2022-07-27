import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twich_clone/Provider/user_provider.dart';
import 'package:twich_clone/screens/feed_screen.dart';
import 'package:twich_clone/screens/go_live_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/homepage';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  List<Widget> pages = [
    FeedScreen(),
    LiveScreen(),
    const Center(child: Text("Browse")),
  ];
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(userProvider.user.username),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedFontSize: 10,
          currentIndex: _page,
          onTap: onPageChange,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Following',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_rounded),
              label: 'Go Live',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.copy),
              label: 'Browse',
            ),
          ]),
      body: pages[_page],
    );
  }
}
