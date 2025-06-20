import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_primary_button.dart';

class OrderFoodButton extends StatelessWidget {
  const OrderFoodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 709,
      left: 24,
      right: 24,
      child: PrimaryButton(
        onPressed: () {
          GoRouter.of(context).push("/EnterYourDetails");
        },
      ),
    );
  }
}
