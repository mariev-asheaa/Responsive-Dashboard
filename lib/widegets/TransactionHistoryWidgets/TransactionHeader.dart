import 'package:expenses_dashboard/core/styles.dart';
import 'package:flutter/cupertino.dart';

class Transactionheader extends StatelessWidget {
  const Transactionheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History',style: Styles.styleBold16(context).copyWith(
          color: Color(0xFF064061),
        ),),
        Text('See all',style: Styles.styleRegular14(context).copyWith(
          color: Color(0xFF4EB7F2),
        ),),
      ],
    );
  }
}
