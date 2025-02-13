import 'package:expenses_dashboard/core/Sections_background.dart';
import 'package:expenses_dashboard/core/styles.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/CardsPageView.dart';
import 'package:expenses_dashboard/widegets/MyCardWidgets/Dots.dart';
import 'package:expenses_dashboard/widegets/TransactionHistoryWidgets/TransactionBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatefulWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  State<MyCardAndTransactionSection> createState() => _MyCardAndTransactionSectionState();
}

class _MyCardAndTransactionSectionState extends State<MyCardAndTransactionSection> {
  late PageController pageController; //indicates the page number
  int currentPageIndex=0;
  @override
  void initState() {
   pageController=PageController();
   pageController.addListener((){
     currentPageIndex=pageController.page!.round();
     setState(() {

     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SectionsBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My card',style: Styles.styleBold16(context).copyWith(color: Color(0xFF064061)),),
            SizedBox(height: 20,),
            Cardspageview(pageController: pageController,),
            SizedBox(height: 19,),
            Dots(currantPageIndex: currentPageIndex,),
            Divider(color: Color(0xffF1F1F1),height: 40,),
            Transactionbody(),
          ],
        ),
      ),
    );
  }
}
