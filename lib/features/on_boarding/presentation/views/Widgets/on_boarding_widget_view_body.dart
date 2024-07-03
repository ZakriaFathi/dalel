import 'package:dalel_first_project/core/utils/app_assets.dart';
import 'package:dalel_first_project/core/utils/app_text_style.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/custom_smooth_page_Indicator.dart';
import 'package:flutter/material.dart';

class OnBoargingWidgetBody extends StatelessWidget {
  OnBoargingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.imagesOnBoarding1),
              const SizedBox(height: 24),
              CustomSmoothpageIndecator.CustomSmoothpageIndicator(
                  controller: _controller),
              const SizedBox(height: 32),
              Text(
                "Explore The history with Delel in a smart way",
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                "Explore The history with Delel in a smart way",
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
