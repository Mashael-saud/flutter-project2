// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import '../component/season_details.dart';

class WinterPage extends StatelessWidget {
  const WinterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 68),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SeasonDetails(
              MyText: 'المربعانية',
              Describe: 'تشتد فيه قسوة البرد ونشاط الرياح الباردة ',
              Detail: 'وينتهي قصر النهار وطول الليل ويبدا النهار في الزياد',
              StarName: 'النجوم: الإكليل والقلب والشولة',
              Date: 'يبدا بتاريخ ٢٢ ديسمبر وينتهي في ١٩ يناير',
            ),
            SizedBox(
              height: 20,
            ),
            SeasonDetails(
              MyText: 'الشبط',
              Describe: 'يزيد فيه الصقيع ولا يزرع فيه شي من شدة البرد',
              Detail: '',
              StarName: 'النجم: النعايم والبلدة',
              Date: 'يبدا بتاريخ ٢٠ يناير وينتهي ١٨ فبراير ',
            ),
            SizedBox(
              height: 20,
            ),
            SeasonDetails(
              MyText: 'العقارب',
              Describe: 'تورق فيه الاشجار الفاكهة، ثلثه من الشتاء وبقيته من الربيع ',
              Detail: 'تخف فيه حدة البرد وتكثر فيه الامطار',
              StarName: 'النجم: سعد الذابح و سعد بُلع',
              Date: 'يبدا في تاريخ ١٩ فبراير وينتهي في ٢٠ مارس',
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
