import 'package:expenses_dashboard/core/SizeConfig.dart';
import 'package:flutter/cupertino.dart';

class Adaptivelayout extends StatelessWidget {
  const Adaptivelayout({super.key, required this.mobilelayout, required this.tabletlayoyt, required this.desktoplayout});

  final WidgetBuilder mobilelayout,tabletlayoyt,desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context,constrains){
          if(constrains.maxWidth<SizeConfg.tablet){
            return mobilelayout(context);
          }
          else if(constrains.maxWidth<SizeConfg.desktop){
            return tabletlayoyt(context);
          }
          else{
            return desktoplayout(context);
          }
        }
    );
  }
}
