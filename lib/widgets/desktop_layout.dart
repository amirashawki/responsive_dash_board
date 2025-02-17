import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/User_Info_ListTile.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [CustomDrawer()],
      ),
    );
  }
}

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
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: Assets.imagesAvatar3,
          ),
          ListTile(
            leading: Text('bhj'),
            title: Text('vhggh'),
          )
        ],
      ),
    );
  }
}
