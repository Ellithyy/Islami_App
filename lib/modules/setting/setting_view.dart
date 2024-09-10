import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class SettingsView extends StatefulWidget {
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    const List<String> languageList = [
      'English',
      'عربي',
    ];
    const List<String> themeList = ['Light', 'Dark'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            //hintText: lang.drop_down_languge_hint,
            items: languageList,
            initialItem: provider.currentLang == 'en'
                ? languageList[0]
                : languageList[1],
            onChanged: (value) {
              if (value == 'English') {
                provider.changeLang('en');
              }
              if (value == 'عربي') {
                provider.changeLang('ar');
              }
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
              provider.isDark() ? Color(0xFF141A2E) : Color(0xFFF8F8F8),
              expandedFillColor:
              provider.isDark() ? Color(0xFF141A2E) : Color(0xFFF8F8F8),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_outlined,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_outlined,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            lang.theme_model,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            items: themeList,
            initialItem: provider.currentTheme == ThemeMode.dark
                ? themeList[1]
                : themeList[0],
            onChanged: (value) {
              if (value == 'Light') {
                provider.changeTheme(ThemeMode.light);
              }
              if (value == 'Dark') {
                provider.changeTheme(ThemeMode.dark);
              }
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
              provider.isDark() ? Color(0xFF141A2E) : Color(0xFFF8F8F8),
              expandedFillColor:
              provider.isDark() ? Color(0xFF141A2E) : Color(0xFFF8F8F8),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_outlined,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_outlined,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


