import 'package:dalel_first_project/core/utils/app_strings.dart';
import 'package:dalel_first_project/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class customNavBar extends StatelessWidget {
  const customNavBar({
    super.key, required this.onTap,
  });
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins500style18
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
