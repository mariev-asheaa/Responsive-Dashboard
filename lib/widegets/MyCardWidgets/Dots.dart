import 'package:expenses_dashboard/widegets/MyCardWidgets/DotIndicator.dart';
import 'package:flutter/cupertino.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.currantPageIndex});
final int currantPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index)=>
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Dotindicator(isActive: index==currantPageIndex),
          )
      ),
    );
  }
}
