import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/utils/app_text_style.dart';
import 'package:dalel_first_project/features/auth/presentation/widgets/custom_chech_box.dart';
import 'package:flutter/material.dart';

class TermsAndConidtionWidget extends StatelessWidget {
  const TermsAndConidtionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomChechBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: AppStrings.iHaveAgreeToOur,
                  style: CustomTextStyles.poppins400style12),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyles.poppins400style12
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
