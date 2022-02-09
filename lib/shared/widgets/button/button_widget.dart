import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class ButtonWidget extends StatelessWidget {
  final bool? enable;

  const ButtonWidget({
    Key? key,
    this.enable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      child: InkWell(
        enableFeedback: this.enable,
        onTap: this.enable == true ? () {} : null,
        child: Ink(
          decoration: BoxDecoration(
            color: this.enable == true
                ? AppColors.primary
                : AppColors.disableButton,
            borderRadius: BorderRadius.circular(6),
          ),
          width: size.width,
          height: 58,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Entrar",
                style: AppTexts.buttonText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
