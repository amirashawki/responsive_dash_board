import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({
    super.key,
  });

  

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}
final List<DrawerModel> drawerItems = [
    DrawerModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerModel(image: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
int isactiveIndex = 0;

class _DrawerItemListState extends State<DrawerItemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isactiveIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerModel: drawerItems[index],
                isActive: isactiveIndex == index,
              ),
            ),
          );
        });
  }
}
