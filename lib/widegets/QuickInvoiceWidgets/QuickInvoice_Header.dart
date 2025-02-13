import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles.dart';

class QuickinvoiceHeader extends StatelessWidget {
  const QuickinvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice',style: Styles.styleSemiBold20(context),),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Center(child: Icon(Icons.add,color: Color(0xFF4EB7F2),),
          )),
      ],
    );
  }
}
