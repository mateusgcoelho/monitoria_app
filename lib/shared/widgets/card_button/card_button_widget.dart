import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class CardButtonWidget extends StatelessWidget {
  final String textCard;
  final VoidCallback? onTap;
  final IconData iconData;

  const CardButtonWidget({
    Key? key,
    required this.textCard,
    this.onTap,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(6),
      shadowColor: AppColors.primary,
      child: InkWell(
        onTap: this.onTap,
        child: Container(
          height: 142,
          alignment: Alignment.bottomLeft,
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    this.iconData,
                    size: 40,
                    color: AppColors.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      this.textCard,
                      style: AppTexts.textCard,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
