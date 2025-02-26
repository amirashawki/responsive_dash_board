import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 266,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFF4EB7F2)),
      child: Center(
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18(context),
        ),
      ),
    );
  }
}
