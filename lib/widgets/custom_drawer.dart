import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/UserInfo_model.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/User_Info_ListTile.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          UserInfoListTile(
            userinfoModel: UserinfoModel(
                title: 'Madrani Andi',
                subtitle: 'Madraniadi20@gmail',
                image: Assets.imagesAvatar1),
          ),
          // DrawerItemList(),
          // SizedBox(
          //   height: 235,
          // ),
          DrawerItem(
              drawerModel: DrawerModel(
                  image: Assets.imagesSettings, title: 'Setting system')),
          DrawerItem(
              drawerModel: DrawerModel(
                  image: Assets.imagesLogout, title: 'Logout account')),
        ],
      ),
    );
  }
}
