import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_2/pages/login_page.dart';
import 'package:project_2/setting/about_page.dart';
import 'package:project_2/setting/language_page.dart';
import 'package:project_2/setting/teamworker_page.dart';

import '../component/settings_card.dart';
import 'connect_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'الإعدادات',
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SettingsCard(
                  icon: Icons.language,
                  title: 'اللغة',
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(MaterialPageRoute(builder: (context) => const LanguagePage()));
                  },
                ),
                SettingsCard(
                  icon: Icons.group_outlined,
                  title: 'فريق الملف',
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(MaterialPageRoute(builder: (context) => const TeamWorkerPage()));
                  },
                ),
                SettingsCard(
                  icon: Icons.info_outline,
                  title: 'نبذة عن التطبيق',
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(MaterialPageRoute(builder: (context) => const AboutPage()));
                  },
                ),
                SettingsCard(
                  icon: Icons.contact_support_outlined,
                  title: 'تواصل معنا',
                  onTap: () {
                    log('clicked');
                    final navigator = Navigator.of(context);
                    navigator.push(MaterialPageRoute(builder: (context) => const ConnectPage()));
                  },
                ),
                SettingsCard(
                  icon: Icons.star_border,
                  title: 'تقييم التطبيق',
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
