import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles.dart';

class Allexpenseheader extends StatelessWidget {
  const Allexpenseheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('All Expenses',style: Styles.styleSemiBold20(context),),
          Container(
            padding: EdgeInsets.all(12),
            height: 48,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1,color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
            ),
            child: Row(
              children: [
                Text('Monthly',style: Styles.styleMedium16(context),),
                SizedBox(width: 18,),
                Icon(Icons.keyboard_arrow_down,size: 24,color: Color(0xff064061),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
