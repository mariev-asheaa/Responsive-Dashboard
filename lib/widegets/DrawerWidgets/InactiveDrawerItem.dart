import 'package:expenses_dashboard/models/DrawerItemModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/styles.dart';

class Inactivedraweritem extends StatelessWidget {
  const Inactivedraweritem({super.key, required this.drawerItemModel,});

 final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title,style: Styles.styleMedium16(context),),
    );
  }
}
