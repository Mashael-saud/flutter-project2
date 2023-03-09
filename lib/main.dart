import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_2/pages/day_Page.dart';
import 'package:project_2/pages/profile_page.dart';
import 'package:project_2/season/home_page.dart';
import 'package:project_2/setting/setting_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//
// ignore: prefer-single-widget-per-file
class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const dayPage(),
      const ProfilePage(),
      const SettingPage(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(Icons.calendar_month_sharp, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        backgroundColor: const Color(0xfff181a28),
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
      ),
    );
  }
}
