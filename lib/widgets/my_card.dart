import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff4EB7F2), borderRadius: BorderRadius.circular(12)),
        child: Stack(children: [
          Image.asset(
            Assets.imagesCardBackground,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 15,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                ),
                Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                )
              ],
            ),
          ),
          Positioned(
              top: 20,
              right: 20,
              child: SvgPicture.asset(Assets.imagesGallery)),
         
          Positioned(
              bottom: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold20
                        (context).copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20-124',
                    style:
                        AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
