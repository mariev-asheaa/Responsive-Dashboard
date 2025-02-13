import 'package:expenses_dashboard/widegets/TransactionHistoryWidgets/TransactionHeader.dart';
import 'package:expenses_dashboard/widegets/TransactionHistoryWidgets/TransactionList.dart';
import 'package:flutter/cupertino.dart';

import '../../core/styles.dart';

class Transactionbody extends StatelessWidget {
  const Transactionbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transactionheader(),

        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 16),
          child: Text('13 April 2022',style: Styles.styleMedium16(context).copyWith(
            color: Color(0xffAAAAAA)
          ),),
        ),

        Transactionlist(),
      ],
    );
  }
}
