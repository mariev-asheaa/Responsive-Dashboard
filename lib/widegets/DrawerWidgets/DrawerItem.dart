import 'package:expenses_dashboard/widegets/DrawerWidgets/ActiveDrawerItem.dart';
import 'package:expenses_dashboard/widegets/DrawerWidgets/InactiveDrawerItem.dart';
import 'package:flutter/cupertino.dart';

import '../../models/DrawerItemModel.dart';

class Draweritem extends StatelessWidget {
  const Draweritem({super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?Activedraweritem(drawerItemModel: drawerItemModel)
        :Inactivedraweritem(drawerItemModel: drawerItemModel);
  }
}
