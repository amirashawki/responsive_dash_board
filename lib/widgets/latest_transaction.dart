import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/User_Info_ListTile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
       const LatestTransactionlist(),
      ],
    );
  }
}

class LatestTransactionlist extends StatelessWidget {
  const LatestTransactionlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: UserInfoListTile(
                  title: 'Madrani Andi',
                  subtitle: 'Madraniadi20@gmail',
                  image: Assets.imagesAvatar1),
            );
          }),
    );
  }
}
