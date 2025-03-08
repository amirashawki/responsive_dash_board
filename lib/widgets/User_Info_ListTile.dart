import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/UserInfo_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userinfoModel,
  });
  final UserinfoModel userinfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userinfoModel.image),
          title: Text(
            userinfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userinfoModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
