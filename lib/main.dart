import 'package:balanced_meal/core/utils/constants/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BalancedMeal());
}

class BalancedMeal extends StatelessWidget {
  const BalancedMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
