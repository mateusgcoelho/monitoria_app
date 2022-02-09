import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class HistoricPage extends StatelessWidget {
  const HistoricPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            bottom: 32,
            top: 48,
          ),
          child: Text(
            "Histórico",
            style: AppTexts.titleLoginPage,
          ),
        ),
        Column(
          children: [],
        ),
      ],
    );
  }
}
