import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadith/hadith_view.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class HadethDetailsView extends StatelessWidget{
  static const String routeName = 'hadeth_details_view';
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as HadethData;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackGround()),
              fit: BoxFit.cover)),
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
              Text(
                data.title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: provider.isDark()
                      ? theme.primaryColorDark
                      : Colors.black,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    data.body,
                    style: theme.textTheme.bodySmall?.copyWith(
                      height: 1.8,
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  itemCount: 6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}