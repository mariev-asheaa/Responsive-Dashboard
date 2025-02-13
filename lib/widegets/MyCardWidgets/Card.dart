import 'package:expenses_dashboard/core/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/assets.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.cardColor});
final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 380/235,
    child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
          color: cardColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
    )
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 18,right: 42,top: 16),
            title: Text('Name card',style: Styles.styleRegular16(context).copyWith(
              color: Colors.white
            ),),
            subtitle: Text('Syah Bandi',style: Styles.styleMedium20(context)),
            trailing: SvgPicture.asset(Assets.imagesGallery),
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               Text('0918 8124 0042 8129',style: Styles.styleSemiBold20(context).copyWith(
                 color: Colors.white
               ),),
                Text(r'12/20 - 124',style: Styles.styleRegular16(context).copyWith(
                 color: Colors.white
                ),),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
