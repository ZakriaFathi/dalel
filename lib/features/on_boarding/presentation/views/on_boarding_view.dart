import 'package:dalel_first_project/core/functions/Navigation.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/custom_nav_bar.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/get_buttens.dart';
import 'package:dalel_first_project/features/on_boarding/presentation/views/Widgets/on_boarding_widget_view_body.dart';
import 'package:flutter/material.dart';

import 'functions/on_boarding.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);

  int currentIndex = 0;

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
              customNavBar(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, "/singUp");
                },
              ),
              OnBoargingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 88,
              ),
              GetButtons(currentIndex: currentIndex, controller: _controller),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
