import 'package:expenses_dashboard/models/AllExpensesItemModel.dart';
import 'package:expenses_dashboard/widegets/ExpensesWidgets/AllExpencesItemHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles.dart';


class InAciveAllexpensesitem extends StatelessWidget {
  const InAciveAllexpensesitem({super.key, required this.allExpensesItemModel});
 final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,color: Color(0xffF1F1F1)
            ),
            borderRadius: BorderRadius.circular(12)
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Allexpencesitemheader(image: allExpensesItemModel.image),
          SizedBox(height: 34,),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,
              style: Styles.styleSemiBold16(context),),
          ),
          SizedBox(height: 8,),
          Text(allExpensesItemModel.date,
            style: Styles.styleRegular14(context),),
          SizedBox(height: 16,),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,
              style: Styles.styleSemiBold24(context),),
          ),
        ],
      ),
    );
  }
}

class AciveAllexpensesitem extends StatelessWidget {
  const AciveAllexpensesitem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,color: Color(0xffF1F1F1)
            ),
            borderRadius: BorderRadius.circular(12)
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Allexpencesitemheader(image: allExpensesItemModel.image,
            imagebackground:Colors.white.withValues(alpha: 0.1000) ,
          imagecolor: Colors.white,
          ),
          SizedBox(height: 34,),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,
              style: Styles.styleSemiBold16(context).copyWith(
                color: Colors.white
              ),),
          ),
          SizedBox(height: 8,),
          Text(allExpensesItemModel.date,
            style: Styles.styleRegular14(context).copyWith(
                color: Colors.white
            ),),
          SizedBox(height: 16,),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,
              style: Styles.styleSemiBold24(context).copyWith(
                  color: Colors.white
              ),),
          ),
        ],
      ),
    );
  }
}
