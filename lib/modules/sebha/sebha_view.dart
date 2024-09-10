import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/settings_provider.dart';
import 'package:provider/provider.dart';


class TasbehView extends StatefulWidget {
  @override
  _TasbehViewState createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  List<String> tasbehList = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
    'أستغفر الله العظيم وأتوب إليه',
  ];
  double rotate = 0;
  int counter = 0;
  int currentTasbeh = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: size.height / 10),
          Stack(
            alignment: const Alignment(0.3, -2.3),
            children: [
              Image.asset(provider.getSebhaHeadImage()),
              InkWell(
                onTap: onClick,
                customBorder: const CircleBorder(),
                child: Transform.rotate(
                  angle: rotate,
                  child: Image.asset(provider.getSebhaBodyImage()),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'عدد التسبيحات',
            style: theme.textTheme.bodyMedium!.copyWith(
              color: provider.isDark() ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            width: 70.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: provider.isDark()
                  ? const Color(0xFF141A2E).withOpacity(0.8)
                  : theme.primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: provider.isDark() ? Colors.white : Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          Container(
            alignment: Alignment.center,
            width: 140.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: provider.isDark()
                  ? theme.primaryColorDark
                  : theme.primaryColor,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              tasbehList[currentTasbeh],
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                color: provider.isDark() ? Colors.black : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onClick() {
    counter++;
    rotate--;
    setState(() {});
    if (counter == 34) {
      currentTasbeh++;
      counter = 0;
      setState(() {});
    }
    if (currentTasbeh > tasbehList.length - 1) {
      currentTasbeh = 0;
      setState(() {});
    }
  }
}
