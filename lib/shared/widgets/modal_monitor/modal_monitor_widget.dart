import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';
import 'package:monitoria_app/shared/widgets/monitor_card/monitor_card_widget.dart';

class ModalMonitorWidget extends StatelessWidget {
  const ModalMonitorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: Container(
              height: 2,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.input,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 36,
            ),
            child: Text(
              "Monitores",
              style: AppTexts.titleLoginPage,
            ),
          ),
          Column(
            children: [
              MonitorCardWidget(),
              MonitorCardWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
