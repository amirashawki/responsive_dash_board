import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/UserInfo_model.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
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

  static const items = [
    UserinfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserinfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar2),
    UserinfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map((e) =>
                  IntrinsicWidth(child: UserInfoListTile(userinfoModel: e)))
              .toList()),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       physics: const NeverScrollableScrollPhysics(),
    //       scrollDirection: Axis.horizontal,
    //       shrinkWrap: true,
    //       itemCount: items.length,
    //       itemBuilder: (BuildContext, index) {
    //         return Padding(
    //             padding: const EdgeInsets.only(right: 12),
    //             child: IntrinsicWidth(
    //                 child: UserInfoListTile(userinfoModel: items[index])));
    //       }),
    // );
  }
}
