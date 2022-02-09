import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';
import 'package:monitoria_app/shared/widgets/button/button_widget.dart';
import 'package:monitoria_app/shared/widgets/input_text/input_text_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text.rich(
                  TextSpan(
                    text: "Entrar Agora\n",
                    style: AppTexts.titleLoginPage,
                    children: [
                      TextSpan(
                        text: "Complete os campos para continuar.",
                        style: AppTexts.subTitleLoginPage,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Container(
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                          child: Column(
                            children: [
                              InputTextWidget(
                                labelText: "RA, ex: (200473)",
                                keyboardType: TextInputType.number,
                                onChanged: (value) {},
                              ),
                              InputTextWidget(
                                labelText: "Senha",
                                obscureText: true,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 46,
                        ),
                        ButtonWidget(
                          enable: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
