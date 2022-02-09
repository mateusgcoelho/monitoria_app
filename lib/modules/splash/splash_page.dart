import 'package:flutter/material.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';
import 'package:monitoria_app/shared/themes/app_images.dart';
import 'package:monitoria_app/shared/themes/app_texts.dart';

class SplashPage extends StatelessWidget {
  Future<void> teste(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    teste(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          AppImages.logoFull,
        ),
      ),
      bottomNavigationBar: Container(
        height: 64,
        width: size.width,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: "Desenvolvido",
              style: AppTexts.footer,
              children: [
                TextSpan(
                  text: " por João Mateus",
                  style: AppTexts.footerBold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
