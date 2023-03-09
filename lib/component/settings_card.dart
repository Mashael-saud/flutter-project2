import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key, required this.icon, required this.title, this.onTap});
  final IconData icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment(0.8, 1), colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
            ]),
          ),
          width: 400,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              const SizedBox(width: 170),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.elMessiri(
                      textStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
