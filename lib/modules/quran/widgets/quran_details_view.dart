import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/quran/widgets/quran_list.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class QuranDetailsView extends StatefulWidget {
  static const String routeName = 'quran_details_view';

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as QuranData;
    var provider = Provider.of<SettingsProvider>(context);
    if (content.isEmpty) loadSura(data.suraNumber);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackGround()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'إسلامي',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 29,
            right: 29,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
              color: provider.isDark()
                  ? Color(0xFF141A2E).withOpacity(0.8)
                  : Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'سورة ${data.suraName}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle,
                    color: provider.isDark()
                        ? theme.primaryColorDark
                        : Colors.black,
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    '${{index + 1}}${versesList[index]}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      height: 1.8,
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  itemCount: versesList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String content = '';
  List<String> versesList = [];

  Future<void> loadSura(String suraNumber) async {
    content = await rootBundle.loadString('assets/files/$suraNumber.txt');
    versesList = content.split('\n');
    setState(() {});
  }
}
