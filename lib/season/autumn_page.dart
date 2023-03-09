import 'package:flutter/material.dart';
import 'package:project_2/component/season_details.dart';

class AutumnPage extends StatelessWidget {
  const AutumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SeasonDetails(
              MyText: 'سهيل',
              Describe: 'تخرج الحرارة من جوف الأرض وتبدا بالانخفاض ويكره النوم تحت اديم السماء ليلا ',
              Detail: 'يبرد فيه اليلل ويكثر هبوب الرياح الشمالية ،في ٤٢ ديسمبر يتساوى الليل مع النهار',
              StarName: 'نجم الجبهة والزبرة والصرفة',
              Date: 'يبدا بتاريخ ٢٣ أكتوبر وينتهي في ٢٢ أكتوبر',
            ),
            SizedBox(
              height: 20,
            ),
            SeasonDetails(
              MyText: 'الوسم',
              Describe: 'يستحسن فيه زراعة الحبوب ويطيب فيه الهواء مع زيادة برودة الليل',
              Detail: 'تزداد فيه الامطار الغزيرة وتكثر العواصف',
              StarName: 'نجم العواء والسماك',
              Date: 'يبدا بتاريخ ٢٤ أكتوبر وينتهي في ٢٢ نوفمبر',
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
