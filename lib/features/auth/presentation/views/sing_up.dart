import 'package:dalel_first_project/core/utils/app_colors.dart';
import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/utils/app_text_style.dart';
import 'package:dalel_first_project/core/widgets/custombtn.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/terms_and_conidtion_widget.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 152),
            ),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(
              text: AppStrings.welcome,
            )),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConidtionWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 88),
            ),
            SliverToBoxAdapter(
              child: CustomBtn(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            const SliverToBoxAdapter(
              child: HAveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                txet2: AppStrings.signUp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HAveAnAccountWidget extends StatelessWidget {
  const HAveAnAccountWidget(
      {super.key, required this.text1, required this.txet2});
  final String text1, txet2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1, style: CustomTextStyles.poppins400style12),
          TextSpan(
              text: txet2,
              style: CustomTextStyles.poppins400style12
                  .copyWith(color: AppColors.lightGrey)),
        ],
      ),
    );
  }
}
