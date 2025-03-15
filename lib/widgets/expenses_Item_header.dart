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
        Flexible(
          child: ConstrainedBox(
            constraints:const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                  decoration: ShapeDecoration(
                      shape: const OvalBorder(),
                      color: backgroundImage ?? const Color(0xFFFAFAFA)),
                  child: Center(
                    child: SvgPicture.asset(
                      image,
                      colorFilter: ColorFilter.mode(
                          colorImage ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                    ),
                  )),
            ),
          ),
        ),
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
