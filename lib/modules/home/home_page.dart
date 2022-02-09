import 'package:flutter/material.dart';
import 'package:monitoria_app/modules/historic/historic_page.dart';
import 'package:monitoria_app/modules/home/home_controller.dart';
import 'package:monitoria_app/modules/menu_items/menu_items_page.dart';
import 'package:monitoria_app/modules/notifications/notifications_page.dart';
import 'package:monitoria_app/shared/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  final pages = [
    MenuItemsPage(),
    HistoricPage(),
    NotificationsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            pages[controller.currentPage],
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(flex: -1, child: Container()),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 32,
                color: controller.currentPage == 0
                    ? AppColors.primary
                    : AppColors.textGray,
              ),
              onPressed: () {
                setState(() {
                  controller.setPage(0);
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.description_outlined,
                size: 32,
                color: controller.currentPage == 1
                    ? AppColors.primary
                    : AppColors.textGray,
              ),
              onPressed: () {
                setState(() {
                  controller.setPage(1);
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                size: 32,
                color: controller.currentPage == 2
                    ? AppColors.primary
                    : AppColors.textGray,
              ),
              onPressed: () {
                setState(() {
                  controller.setPage(2);
                });
              },
            ),
            Expanded(
              flex: -1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
