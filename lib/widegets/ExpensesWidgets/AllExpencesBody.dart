import 'package:flutter/cupertino.dart';

import '../../generated/assets.dart';
import '../../models/AllExpensesItemModel.dart';
import 'AllExpensesItem.dart';


class Allexpencesbody extends StatefulWidget {
  const Allexpencesbody({super.key});

  @override
  State<Allexpencesbody> createState() => _AllexpencesbodyState();
}

class _AllexpencesbodyState extends State<Allexpencesbody> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=0;
              });
            },
            child: Allexpensesitem(allExpensesItemModel: AllExpensesItemModel(
                title: 'Balance', image: Assets.imagesBalance),
              isActive: selectedIndex==0,
            ),
          ),
        ),
        SizedBox(width: 12,),

        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=1;
              });
            },
            child: Allexpensesitem(allExpensesItemModel: AllExpensesItemModel(
                title: 'Income', image: Assets.imagesIncome),
              isActive:  selectedIndex==1,
            ),
          ),
        ),
        SizedBox(width: 12,),

        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=2;
              });
            },
            child: Allexpensesitem(allExpensesItemModel: AllExpensesItemModel(
                title: 'Expenses', image: Assets.imagesExpenses),
              isActive:  selectedIndex==2,
            ),
          ),
        ),
      ],
    );
  }
}
