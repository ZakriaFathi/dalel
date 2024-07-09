import 'package:dalel_first_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalel_first_project/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sing_up_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/singUp",
    builder: (context, state) => const SingUpView(),
  ),
  GoRoute(
    path: "/singIn",
    builder: (context, state) => const SingInView(),
  ),
]);
