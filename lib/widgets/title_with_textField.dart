import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_textfield.dart';

class TitleWithTextField extends StatelessWidget {
  const TitleWithTextField({super.key, required this.text, required this.hint});
  final String text, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 16,
        ),
        CustomTextfield(
          text: hint,
        )
      ],
    );
  }
}
