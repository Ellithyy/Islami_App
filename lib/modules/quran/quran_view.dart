import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/widgets/quran_details_view.dart';
import 'package:islami_app/modules/quran/widgets/quran_list.dart';

class QuranView extends StatelessWidget {
  static final List<String> suraNames = ['الفاتحه',"البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset('assets/images/qur2an_screen_logo.png', scale: 1.2,),
        const Divider(),
        Row(
          children: [
            Expanded(child: Text('رقم السورة', style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,)),
            const SizedBox(height: 40, child: VerticalDivider()),
            Expanded(child: Text('إسم السورة', style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,)),
          ],
        ),
        const Divider(),
        Expanded(child: ListView.builder(itemBuilder: (context,index)=>GestureDetector(onTap: (){Navigator.pushNamed(context, QuranDetailsView.routeName,arguments: QuranData(suraName: suraNames[index], suraNumber: (index +1).toString()));},child: QuranList(data: QuranData(suraName: suraNames[index], suraNumber: (index +1).toString()),)),itemCount: suraNames.length,))
      ],
    );
  }
}