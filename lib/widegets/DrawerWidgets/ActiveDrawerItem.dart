import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles.dart';
import '../../models/DrawerItemModel.dart';

class Activedraweritem extends StatelessWidget {
  const Activedraweritem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title,style: Styles.styleBold16(context),),
      trailing: Container(
        width: 3,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2),),
      ),
    );
  }
}
