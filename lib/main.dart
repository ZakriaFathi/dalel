import 'package:dalel_first_project/core/routes/app_router.dart';
import 'package:dalel_first_project/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
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
