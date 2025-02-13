import 'package:expenses_dashboard/core/SizeConfig.dart';
import 'package:expenses_dashboard/widegets/IncomeWidgets/Detailed_IncomeChart.dart';
import 'package:flutter/cupertino.dart';

import 'IncomeChart.dart';
import 'IncomedetailesList.dart';

class Incomebody extends StatelessWidget {
  const Incomebody({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.sizeOf(context).width;
    return width>SizeConfg.desktop && width<=1760?Expanded(child: DetailedIncomechart())
        : Row(
      children: [
        Expanded(child: Incomechart()),
        Expanded(flex:2,child: Incomedetaileslist())
      ],
    );
  }
}
