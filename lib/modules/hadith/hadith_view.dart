import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadith/hadith_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if(dataList.isEmpty)loadHadeth();

    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
        ),
        Divider(),
        Text(
          'الأحاديث',
          style: theme.textTheme.titleLarge,
        ),
        Divider(),
        Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, HadethDetailsView.routeName,arguments: dataList[index],);

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(dataList[index].title,textAlign: TextAlign.center,style: theme.textTheme.bodyMedium,),
                    ),
                  ),

              itemCount: dataList.length,
            )),
      ],

    );

  }



  List<HadethData> dataList = [];

  Future<void> loadHadeth() async {
    String ahadethData = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethContent = ahadethData.split('#');
    for (int i = 0; i < hadethContent.length; i++) {
      String singleHadeth = hadethContent[i].trim();
      int titleLength = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, 13);
      String body = singleHadeth.substring(titleLength + 1);
      HadethData data = HadethData(title: title, body: body);
      dataList.add(data);
    }
    setState(() {});
  }

}

class HadethData {
  final String title;
  final String body;

  HadethData({required this.title, required this.body});
}
