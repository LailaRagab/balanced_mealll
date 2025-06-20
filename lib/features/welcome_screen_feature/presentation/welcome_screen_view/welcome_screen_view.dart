import 'package:balanced_meal/features/welcome_screen_feature/presentation/welcome_screen_view/widgets/background_image.dart';
import 'package:balanced_meal/features/welcome_screen_feature/presentation/welcome_screen_view/widgets/order_food_button.dart';
import 'package:balanced_meal/features/welcome_screen_feature/presentation/welcome_screen_view/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [BackgroundImage(), OrderFoodButton(), ScreenTitle()],
        ),
      ),
    );
  }
}
