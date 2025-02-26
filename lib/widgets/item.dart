import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 270,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFFFAFAFA)),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(text,
              style:
                  AppStyles.styleRegular16.copyWith(color: Color(0xFFAAAAAA))),
        ),
      ),
    );
  }
}
