import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/widgets/custombtn.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/custom_nav_bar.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/on_boarding_widget_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              const customNavBar(),
              OnBoargingWidgetBody(),
              const SizedBox(
                height: 88,
              ),
              const CustomBtn(
                text: AppStrings.next,
              ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
