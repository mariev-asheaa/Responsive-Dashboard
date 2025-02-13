import 'package:expenses_dashboard/widegets/DrawerWidgets/customdrawer.dart';
import 'package:expenses_dashboard/widegets/ExpensesWidgets/AllExpenses.dart';
import 'package:expenses_dashboard/widegets/IncomeWidgets/IncomeSection.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/Card.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/CardsPageView.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/MyCard&TransactionSection.dart';
import 'package:expenses_dashboard/widegets/QuickInvoiceWidgets/QuickInvoice.dart';
import 'package:flutter/cupertino.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Customdrawer(),
        )),
        Expanded(
            flex: 3,
            child: CustomScrollView(
         slivers: [
           SliverFillRemaining(
             hasScrollBody: false,
             child: Row(
               children: [
                 Expanded(
                   flex: 3,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Allexpanses(),
                       ),
                       Quickinvoice()
                     ],
                   ),
                 ),
                 Expanded(
                     flex: 2,
                     child: Column(
                   children: [
                     MyCardAndTransactionSection(),
                     Expanded(child: Incomesection())
                   ],
                 )),
               ],
             ),
           ),
         ],
        )
        ),
      ],
    );
  }
}
