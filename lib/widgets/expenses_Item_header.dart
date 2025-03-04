import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
    this.backgroundImage,
    this.colorImage,
  });
  final String image;
  final Color? backgroundImage, colorImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 60,
            width: 60,
            decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: backgroundImage ??const Color(0xFFFAFAFA)),
            child: Padding(
              padding:const EdgeInsets.all(14),
              child: SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                    colorImage ??const Color(0xff4EB7F2), BlendMode.srcIn),
              ),
            )),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorImage == null ? const Color(0xFF064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
