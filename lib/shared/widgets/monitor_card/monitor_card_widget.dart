import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class MonitorCardWidget extends StatelessWidget {
  const MonitorCardWidget({Key? key}) : super(key: key);

  final user = "oi";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              "/schedule",
              arguments: user,
            );
          },
          child: Container(
            width: size.width,
            child: ListTile(
              title: Text(
                "Gabriel Baldin",
                style: AppTexts.textMonitorCard,
              ),
              subtitle: Text(
                "Banco de Dados",
                style: AppTexts.textMonitorAboutCard,
              ),
              trailing: Container(
                child: Icon(
                  Icons.chevron_right,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
