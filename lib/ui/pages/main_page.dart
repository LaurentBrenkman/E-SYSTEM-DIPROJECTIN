// import 'package:e_system/ui/pages/chat_login.dart';
import 'package:e_system/ui/pages/chat_verification.dart';
import 'package:e_system/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return ChatVerification();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_setting.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_notification.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_story.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
