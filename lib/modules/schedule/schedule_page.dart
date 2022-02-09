import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';
import 'package:monitoria_app/shared/widgets/button/button_widget.dart';
import 'package:monitoria_app/shared/widgets/input_text/input_text_widget.dart';

class SchedulePage extends StatelessWidget {
  final String monitorUser;

  const SchedulePage({
    Key? key,
    required this.monitorUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.textCard,
            size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Banco de Dados",
          style: AppTexts.titleSchedule,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Identificação......",
                      style: AppTexts.bodySchedule,
                    ),
                    Text(
                      "cl200473",
                      style: AppTexts.bodyScheduleBold,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 8,
                              ),
                              child: Text(
                                "Monitor",
                                style: AppTexts.scheduleMonitorInput,
                              ),
                            ),
                            InputTextWidget(
                              labelText: "Monitor",
                              initialValue: "Gabriel Baldin",
                              enable: false,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        InputTextWidget(
                          labelText: "Descrição do problema*",
                          minLines: 7,
                          maxLines: 7,
                          enable: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Data e horario*",
                        style: AppTexts.bodyScheduleBold,
                      ),
                      Text(
                        "Nenhum horario disponivel!",
                        style: AppTexts.input,
                      ),
                    ],
                  ),
                ),
                Container(),
                ButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
