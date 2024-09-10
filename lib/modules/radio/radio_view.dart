import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/core/theme/settings_provider.dart';


class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: size.height / 6),
          Image.asset('assets/images/radio_image.png'),
          const SizedBox(
            height: 30,
          ),
          Text(
            'إذاعة القرآن الكريم',
            style: theme.textTheme.bodyLarge!.copyWith(
              color: provider.isDark() ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.backward_end,
                color: provider.isDark()
                    ? theme.primaryColorDark
                    : theme.primaryColor,
              ),
              const SizedBox(
                width: 30,
              ),
              Icon(
                CupertinoIcons.play,
                color: provider.isDark()
                    ? theme.primaryColorDark
                    : theme.primaryColor,
              ),
              const SizedBox(
                width: 30,
              ),
              Icon(
                CupertinoIcons.forward_end,
                color: provider.isDark()
                    ? theme.primaryColorDark
                    : theme.primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
