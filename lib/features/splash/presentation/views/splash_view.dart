import 'package:dalel_first_project/core/database/cache/cache_helper.dart';
import 'package:dalel_first_project/core/functions/Navigation.dart';
import 'package:dalel_first_project/core/services/service_locator.dart';
import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited = getIt<CacheHelper>().getData(key: "isOnBoardingVisited")??false;
    if(isOnBoardingVisited == true){
      delayedNavigate(context, "/singUp" );
    }else{
      delayedNavigate(context, "/onBoarding");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
