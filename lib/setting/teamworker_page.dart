import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamWorkerPage extends StatelessWidget {
  const TeamWorkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: Column(children: [
            const Text(
              'فريق العمل',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff1f005c),
                    Color(0xff5b0060),
                    Color(0xff870160),
                    Color(0xffac255e),
                    Color(0xffca485c),
                    Color(0xffe16b5c),
                    Color(0xfff39060),
                    Color(0xffffb56b)
                  ],
                ),
              ),
              width: 350,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person_2_sharp,
                      size: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'مشاعل سعود',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'تخصص علوم الحاسب في الجامعة العربية المفتوحة، طالبة في معسكر فريق فلاتر',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: const [
                        Icon(
                          FontAwesomeIcons.twitter,
                        ),
                        Icon(FontAwesomeIcons.instagram),
                        Icon(FontAwesomeIcons.linkedin),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
