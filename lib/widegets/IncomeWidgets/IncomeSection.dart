import 'package:expenses_dashboard/core/Sections_background.dart';
import 'package:expenses_dashboard/widegets/IncomeWidgets/IncomeBody.dart';
import 'package:expenses_dashboard/widegets/IncomeWidgets/IncomeHeader.dart';
import 'package:flutter/cupertino.dart';

class Incomesection extends StatelessWidget {
  const Incomesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SectionsBackground(
          child: Column(
        children: [
          Incomeheader(),
          Incomebody(),
        ],
      )
      ),
    );
  }
}
