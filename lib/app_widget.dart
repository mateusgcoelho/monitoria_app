import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monitoria_app/modules/home/home_page.dart';
import 'package:monitoria_app/modules/login/login_page.dart';
import 'package:monitoria_app/modules/schedule/schedule_page.dart';
import 'package:monitoria_app/modules/splash/splash_page.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Monitoria App",
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.red,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              brightness: Brightness.dark,
            ),
      ),
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/schedule": (context) => SchedulePage(
              monitorUser:
                  ModalRoute.of(context)!.settings.arguments.toString(),
            ),
      },
    );
  }
}
