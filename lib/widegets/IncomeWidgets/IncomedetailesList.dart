import 'package:expenses_dashboard/models/IncomeDetailesModel.dart';
import 'package:expenses_dashboard/widegets/IncomeWidgets/IncomeDetailesItem.dart';
import 'package:flutter/cupertino.dart';

class Incomedetaileslist extends StatelessWidget {
  const Incomedetaileslist({super.key});
static const items=[
  IncomeDetailesModel(title: 'Design product', percent: '25%', color:Color(0xff4EB7F2)),
  IncomeDetailesModel(title: 'Design service', percent: '40%', color:Color(0xff208CC8)),
  IncomeDetailesModel(title: 'Product royalti', percent: '20%', color: Color(0xff064061)),
  IncomeDetailesModel(title: 'Other', percent: '22%', color: Color(0xffE2DECD)),

];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4,(index)=>
          Incomedetailesitem(incomeDetailesModel: items[index])
      ),
    );
  }
}
