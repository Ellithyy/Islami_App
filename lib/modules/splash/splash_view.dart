import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = '/';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
          () {
        Navigator.pushReplacementNamed(context, LayOutView.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    // TODO: implement build
    return Image.asset(
      provider.getSplashImage(),
      fit: BoxFit.cover,
    );
  }
}
