import 'package:flutter/material.dart';
import 'package:project_2/season/autumn_page.dart';
import 'package:project_2/season/spring_page.dart';
import 'package:project_2/season/summer_page.dart';
import 'package:project_2/season/winter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 64),
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'فصول السنة',
                style: TextStyle(
                  color: Color(0xfffe6734f),
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(builder: (context) => const AutumnPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Color(0xfffe6734f), width: 2)),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'الخريف',
                        style: TextStyle(
                          color: Color(0xfffe6734f),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          'https://astrobackyard.com/wp-content/uploads/2016/12/moon-photography-through-telescope.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(builder: (context) => const WinterPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Color(0xfffe6734f), width: 2)),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'الشتاء',
                        style: TextStyle(
                          color: Color(0xfffe6734f),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          'https://astrobackyard.com/wp-content/uploads/2016/12/moon-photography-through-telescope.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(builder: (context) => const SpringPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Color(0xfffe6734f), width: 2)),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'الربيع',
                        style: TextStyle(
                          color: Color(0xfffe6734f),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          'https://astrobackyard.com/wp-content/uploads/2016/12/moon-photography-through-telescope.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(MaterialPageRoute(builder: (context) => const SummerPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Color(0xfffe6734f), width: 2)),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'الصيف',
                        style: TextStyle(
                          color: Color(0xfffe6734f),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          'https://astrobackyard.com/wp-content/uploads/2016/12/moon-photography-through-telescope.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
