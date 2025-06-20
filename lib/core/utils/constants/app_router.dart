import 'package:balanced_meal/features/enter_your_details_feature/presentation/enter_your_details_view.dart';
import 'package:balanced_meal/features/welcome_screen_feature/presentation/welcome_screen_view/welcome_screen_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static var route = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => WelcomeScreenView()),
      GoRoute(
        path: "/EnterYourDetails",
        builder: (context, state) => EnterYourDetailsView(),
      ),
    ],
  );
}
