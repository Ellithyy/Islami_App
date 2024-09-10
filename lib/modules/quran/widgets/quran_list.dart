import 'package:flutter/material.dart';

class QuranList extends StatelessWidget {
  final QuranData data;

  const QuranList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
              data.suraNumber,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
        const SizedBox(height: 40, child: VerticalDivider()),
        Expanded(
            child: Text(
              data.suraName,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
      ],
    );
  }
}

class QuranData {
  String suraName;
  String suraNumber;

  QuranData({required this.suraName, required this.suraNumber});
}
