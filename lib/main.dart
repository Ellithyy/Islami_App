import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // manual import
import 'package:islami_app/core/theme/settings_provider.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/hadith/hadith_details_view.dart';
import 'package:islami_app/modules/hadith/hadith_view.dart';
import 'package:islami_app/modules/quran/widgets/quran_details_view.dart';
import 'package:provider/provider.dart';
import 'modules/splash/splash_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> SettingsProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'Islami App',
      locale: Locale(provider.currentLang),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ApplicationThemeManager.lightThemeData,
      darkTheme: ApplicationThemeManager.darkThemeData,
      themeMode: provider.currentTheme,
      initialRoute: '/',
      routes: {
        SplashView.routeName :  (context)=> const SplashView(),
        LayOutView.routeName :  (context)=> const LayOutView(),
        QuranDetailsView.routeName : (context)=> QuranDetailsView(),
        HadethDetailsView.routeName : (context)=> HadethDetailsView(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}

