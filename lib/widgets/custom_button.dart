import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    required this.text,
    this.textColor,
  });
  final Color? backgroundColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2)),
        onPressed: () {},
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleSemiBold18
               (context) .copyWith(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
