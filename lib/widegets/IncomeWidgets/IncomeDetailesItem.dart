import 'package:expenses_dashboard/core/styles.dart';
import 'package:expenses_dashboard/models/IncomeDetailesModel.dart';
import 'package:flutter/material.dart';

class Incomedetailesitem extends StatelessWidget {
  const Incomedetailesitem({super.key, required this.incomeDetailesModel});
final IncomeDetailesModel incomeDetailesModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            color:incomeDetailesModel.color ,
            shape: OvalBorder()
        ),
      ),
      title: Text(incomeDetailesModel.title,style: Styles.styleRegular16(context),),
      trailing: Text(incomeDetailesModel.percent,style: Styles.styleMedium16(context),),
    );
  }
}
