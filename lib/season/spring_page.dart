import 'package:flutter/material.dart';

import '../component/season_details.dart';

class SpringPage extends StatelessWidget {
  const SpringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SeasonDetails(
              MyText: 'العقارب',
              Describe: '',
              Detail: '',
              StarName: '',
              Date: '',
            ),
            SeasonDetails(
              MyText: 'الحميمين',
              Describe: '',
              Detail: '',
              StarName: '',
              Date: '',
            ),
            SeasonDetails(
              MyText: 'الذراعين',
              Describe: '',
              Detail: '',
              StarName: '',
              Date: '',
            ),
            SeasonDetails(
              MyText: 'الثريا',
              Describe: '',
              Detail: '',
              StarName: '',
              Date: '',
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
