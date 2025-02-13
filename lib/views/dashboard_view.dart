import 'package:expenses_dashboard/core/SizeConfig.dart';
import 'package:expenses_dashboard/widegets/DrawerWidgets/customdrawer.dart';
import 'package:expenses_dashboard/widegets/layouts/Mobile_layout.dart';
import 'package:expenses_dashboard/widegets/layouts/Tablet_Layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widegets/layouts/adaptive_layout.dart';
import '../widegets/layouts/desktop_layout.dart';

class Dashboardview extends StatefulWidget {
  const Dashboardview({super.key});

  @override
  State<Dashboardview> createState() => _DashboardviewState();
}

class _DashboardviewState extends State<Dashboardview> {

  final GlobalKey<ScaffoldState>scaffoldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: MediaQuery.sizeOf(context).width<SizeConfg.tablet?Customdrawer():null,
      appBar: MediaQuery.sizeOf(context).width<SizeConfg.tablet?AppBar(
        leading: IconButton(icon:Icon(Icons.menu), onPressed: () {
       scaffoldkey.currentState!.openDrawer();
        },),
        backgroundColor: Color(0xffFAFAFA),
      ):null,

      backgroundColor: Color(0xffF7F9FA),
      body: Adaptivelayout(
          mobilelayout: (context)=>MobileLayout(),
          tabletlayoyt: (context)=>TabletLayout(),
          desktoplayout:  (context)=>DesktopLayout()
      ),
    );
  }
}
