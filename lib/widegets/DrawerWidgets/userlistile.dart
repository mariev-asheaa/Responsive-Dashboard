import 'package:expenses_dashboard/models/user_info_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/styles.dart';


class Userlistile extends StatelessWidget {
  const Userlistile({super.key, required this.userInfoModel, });
final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(userInfoModel.title,style: Styles.styleSemiBold16(context),)),
        leading: SvgPicture.asset(userInfoModel.image),
        subtitle: Text(userInfoModel.subtitle,style: Styles.styleRegular12(context),),
      ),
    );
  }
}
