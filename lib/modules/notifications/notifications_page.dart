import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

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
            "Notificações",
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
