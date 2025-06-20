import 'package:flutter/material.dart';

import '../../../../../core/utils/assets/images/app_images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.welcomeScreen),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
