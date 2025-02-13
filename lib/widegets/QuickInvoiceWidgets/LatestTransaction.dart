import 'package:expenses_dashboard/models/user_info_model.dart';
import 'package:expenses_dashboard/widegets/DrawerWidgets/userlistile.dart';
import 'package:flutter/cupertino.dart';

import '../../core/styles.dart';
import '../../generated/assets.dart';

class Latesttransaction extends StatelessWidget {
  const Latesttransaction({super.key});
 static const items=[
  UserInfoModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail', image: Assets.imagesAvatar1),
   UserInfoModel(title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com', image: Assets.imagesAvatar2),
   UserInfoModel(title: 'Mariev Asheaa', subtitle: 'Madraniadi20@gmail', image: Assets.imagesAvatar3),
 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text('Latest Transaction',style: Styles.styleMedium16(context),),
        SizedBox(height: 12,),
        SizedBox(
          height: 80,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder:(context,index){
              return IntrinsicWidth(       //takes the child width
                  child: Userlistile(userInfoModel: items[index])
              );
          } ),
        )
      ],
    );
  }
}
