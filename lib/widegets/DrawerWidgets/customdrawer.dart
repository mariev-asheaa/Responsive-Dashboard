import 'package:expenses_dashboard/models/DrawerItemModel.dart';
import 'package:expenses_dashboard/models/user_info_model.dart';
import 'package:expenses_dashboard/widegets/DrawerWidgets/InactiveDrawerItem.dart';
import 'package:expenses_dashboard/widegets/DrawerWidgets/userlistile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../generated/assets.dart';
import 'DrawerItem.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({super.key});

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  int activeIndex=0;

 final List<DrawerItemModel>items=[
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:Column(
              children: [
                Userlistile(userInfoModel: UserInfoModel(title: 'Lekan Okeowo', subtitle: 'demo@gmail.com', image: Assets.imagesAvatar3),),
                SizedBox(height:8,),
              ],
            ) ,
          ),
       SliverList.builder(
           itemCount: items.length,
           itemBuilder: (context,index){
         return GestureDetector(
           onTap: (){
            setState(() {
              activeIndex=index;
            });
           },
           child: Padding(
             padding: const EdgeInsets.only(top: 10),
             child: Draweritem(drawerItemModel: items[index],
               isActive: activeIndex==index,
             ),
           ),
         );
       }),
          SliverFillRemaining(
            hasScrollBody: false,//to make it scroll with the other widgets in CustomScrollView

            child:Column(
              children: [
                Expanded(child: SizedBox()),
                Inactivedraweritem(drawerItemModel: DrawerItemModel(icon: Assets.imagesSettings, title: 'Setting system'),),
                Inactivedraweritem(drawerItemModel: DrawerItemModel(icon: Assets.imagesLogout, title: 'Logout account'),),
                SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
