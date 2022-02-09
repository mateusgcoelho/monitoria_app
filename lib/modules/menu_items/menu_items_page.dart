import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';
import 'package:monitoria_app/shared/widgets/card_button/card_button_widget.dart';
import 'package:monitoria_app/shared/widgets/modal_monitor/modal_monitor_widget.dart';

class MenuItemsPage extends StatelessWidget {
  const MenuItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        PreferredSize(
          preferredSize: Size.fromHeight(152),
          child: Container(
            color: AppColors.primary,
            width: size.width,
            child: ListTile(
              contentPadding: EdgeInsets.only(
                left: 24,
                bottom: 32,
                top: 48,
              ),
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: AppTexts.titleTopbar,
                  children: [
                    TextSpan(
                      text: "João Mateus",
                      style: AppTexts.titleTopbarBold,
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                "2° CT NOTURNO INFORMÁTICA\n\n\nRegistrado como Aluno",
                style: AppTexts.subTitleTopBar,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          child: Container(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardButtonWidget(
                  textCard: "agendar\nnova monitoria",
                  iconData: Icons.dashboard_customize,
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return ModalMonitorWidget();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
