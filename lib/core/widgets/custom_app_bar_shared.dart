import 'package:balanced_meal/core/utils/assets/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/assets/colors/app_colors.dart';

class AppBarShared extends StatelessWidget implements PreferredSizeWidget {
  const AppBarShared({super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.arrow_left_sharp),
              iconSize: 35,
            ),
            SizedBox(width: 50),
            Text(
              title,
              style: AppStyles.font16White.copyWith(
                fontSize: 20,
                color: AppColors.kBlack,
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
      backgroundColor: AppColors.kWhite,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(86);
}
