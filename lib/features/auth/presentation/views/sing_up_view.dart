import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/widgets/custombtn.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/terms_and_conidition_widget.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/have_an_account_widget.dart';

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
              child: TermsAndConiditionWidget(),
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
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                txet2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


