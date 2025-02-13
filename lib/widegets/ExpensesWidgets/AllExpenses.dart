import 'package:expenses_dashboard/core/Sections_background.dart';
import 'package:expenses_dashboard/widegets/ExpensesWidgets/AllExpencesBody.dart';
import 'package:expenses_dashboard/widegets/ExpensesWidgets/AllExpenseHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Allexpanses extends StatelessWidget {
  const Allexpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionsBackground(child: Column(
      children: [
        Allexpenseheader(),
        Allexpencesbody(),
      ],
    ),
    );
  }
}
