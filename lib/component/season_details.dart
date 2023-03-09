import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeasonDetails extends StatelessWidget {
  const SeasonDetails({
    super.key,
    required this.MyText,
    required this.Describe,
    required this.Detail,
    required this.StarName,
    required this.Date,
  });
  final String MyText;
  final String Describe;
  final String Detail;
  final String StarName;
  final String Date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: [
              Column(children: [
                Text(
                  MyText,
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  Describe,
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  Detail,
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  StarName,
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  Date,
                  style: GoogleFonts.elMessiri(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  textAlign: TextAlign.right,
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
