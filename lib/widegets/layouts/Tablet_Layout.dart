import 'package:expenses_dashboard/widegets/DrawerWidgets/customdrawer.dart';
import 'package:expenses_dashboard/widegets/layouts/Mobile_layout.dart';
import 'package:flutter/cupertino.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Customdrawer()),
        SizedBox(width: 32,),
        Expanded(flex:3,
            child:Padding(
              padding: EdgeInsets.only(top: 30),
              child: MobileLayout(),
            )
        ),
        SizedBox(width: 24,),
      ],
    );
  }
}
