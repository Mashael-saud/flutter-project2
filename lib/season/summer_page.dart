// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import '../component/season_details.dart';

class SummerPage extends StatelessWidget {
  const SummerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SeasonDetails(
              MyText: 'الثريا',
              Describe: 'يجف فيه الجو وتبدا في بواكير ثمارها ويبدا الحر',
              Detail: '',
              StarName: 'النجم: الثريا',
              Date: 'يبدا من تاريخ ٢٢ يونيو وينتهي في تاريخ ٢٢ يوليو',
            ),
            Center(
              child: Column(
                children: const [
                  SeasonDetails(
                    MyText: 'التوبيع',
                    Describe: 'نهاية قصر الليل وطول النهار وبداية نضج العشب ',
                    Detail: '',
                    StarName: 'النجم: الدبران',
                    Date: 'يبدا من تاريخ ٢٢ يونيو وينتهي في تاريخ ٢٢ يوليو',
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: const [
                  SeasonDetails(
                    MyText: 'الجوزاء',
                    Describe:
                        'ينقص النهار ويزيد الليل، تكثر العواصف الترابية والسموم، تشتد حرارة الجو، يطيب بعده الغوص لاستخراج اللؤلؤ، يبدا نضوج بواكير النخيل، تزرع فيه بعض الخضار كالقرع والكوسة والخيار ',
                    Detail:
                        'يبلغ الحر أشده (جمرة القيظ)، تزداد السموم وتكون الرياح ساكنة، لايزرع فيه إلا الذرة والملوخية، بانتهائه يبدأ باطن الأرض بالبرودة، يتوفر الرطب',
                    StarName: 'النجوم: الهقعة والهنعة',
                    Date: '١٠ - ٢٠ يوليو',
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: const [
                  SeasonDetails(
                    MyText: 'المرزم',
                    Describe: 'تستمر شدة حرارة الجو وتحدث أحياناً عواصف ترابية',
                    Detail: 'أوان استخراج اللؤلؤ ويكثر فيه الرطب والفواكه الصيفية',
                    StarName: 'نجم: الذراع',
                    Date: 'أيامه ١٣، بدايته ٢٩ يوليو',
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: const [
                  SeasonDetails(
                    MyText: 'الكلبين',
                    Describe: 'يعتدل الجو قليلاً في الليل، يزداد هبوب الرياح، يبدأ فيه غرس فسائل النخيل',
                    Detail: 'تبدأ الزراعة الخريفية المبكرة كالطماطم والباذنجان والبصل والسمسم والذرة الشامية',
                    StarName: 'نجم: النثرة',
                    Date: 'أيامه ١٣، بدايته ١١ أغسطس',
                  ),
                  SeasonDetails(
                    MyText: '',
                    Describe: 'أول سهيل وآخرأ نواء الصيف، يعتدل الجو ولكن لايزال حار في النهار',
                    Detail:
                        'مناسب لغرس فسائل النخيل والأشجار تزرع فيه الخضار مثل نوء النثرة، تتواجد فيه بعض الطيور المهاجرة',
                    StarName: 'نجم: الطرفة',
                    Date: 'أيامه ١٣، بدايته ٢٤ أغسطس',
                  ),
                ],
              ),
            ),
            // const SeasonDetails(
            //   MyText: 'سهيل',
            //   Describe: '',
            //   Detail: '',
            //   StarName: '',
            //   Date: '',
            // ),
          ],
        ),
      ),
      backgroundColor: const Color(0xfff181a28),
    );
  }
}
