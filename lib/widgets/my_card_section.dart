import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.vertical()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'My Card',
              style: AppStyles.styleSemiBold20(context),
            ),
            SizedBox(
              height: 20,
            ),
            MyCard()
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff4EB7F2), borderRadius: BorderRadius.circular(12)),
      child: Stack(children: [
        Image.asset(Assets.imagesCardBackground),
        Positioned(
          top: 15,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              )
            ],
          ),
        ),
        const Positioned(
            top: 20, right: 20, child: Icon(Icons.camera_alt_sharp)),
        Positioned(
            bottom: 15,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold20(context)
                      .copyWith(color: Colors.white),
                ),
                Text(
                  '12/20-124',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                )
              ],
            ))
      ]),
    );
  }
}
