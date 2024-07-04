import 'package:dalel_first_project/core/database/cache/cache_helper.dart';
import 'package:dalel_first_project/core/routes/app_router.dart';
import 'package:dalel_first_project/core/services/service_locator.dart';
import 'package:dalel_first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offColor),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
