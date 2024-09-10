import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadith/hadith_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/radio/radio_view.dart';
import 'package:islami_app/modules/setting/setting_view.dart';
import 'package:islami_app/modules/sebha/sebha_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class LayOutView extends StatefulWidget {
  static const String routeName = 'layout';



  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {

  int selectedIndex = 0;
  List<Widget> layouts = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var lang  = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Stack(children: [
      Image.asset(provider.getBackGround(),fit: BoxFit.cover,),
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(lang.islami),
        ),
        body: layouts[selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value){
            selectedIndex = value;
            setState(() {

            });
          },
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/icon_quran.png')), label: lang.quran),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/icon_hadeth.png')), label: lang.hadith),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/icon_sebha.png')), label: lang.tasbeh),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icons/icon_radio.png')), label: lang.radio),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: lang.setting),
          ],
        ),
      ),
    ]);
  }
}
