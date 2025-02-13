
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardspageview extends StatelessWidget {
  const Cardspageview({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(  //counts the height of each child
      controller: pageController,
      scrollDirection: Axis.horizontal,
        children: List.generate(3, (index)=>MyCard(
            cardColor: index==0?Color(0xFF4EB7F2):index==1?Colors.red:Colors.green
        ),
        )
    );
  }
}
