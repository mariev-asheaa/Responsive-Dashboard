import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles.dart';

class DetailedIncomechart extends StatefulWidget {
  const DetailedIncomechart({super.key});

  @override
  State<DetailedIncomechart> createState() => _DetailedIncomechartState();
}

class _DetailedIncomechartState extends State<DetailedIncomechart> {
  int activeIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1,
        child: PieChart(getChartdata()));
  }

  PieChartData getChartdata() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0,pieResponse){ //trigger the section for the animation
              activeIndex= pieResponse?.touchedSection?.touchedSectionIndex??-1;
              setState(() {

              });
            }
        ),
        sectionsSpace: 0,
        sections:[
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==0?1.5:null,
              titleStyle: Styles.styleMedium16(context).copyWith(color: activeIndex==0?null:Colors.white),
              radius: activeIndex==0?50:40,
              value: 40,
              title: activeIndex==0?'Design service':'40%',
              color: Color(0xff208CC8)
          ),

          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex==1?2.3:null,
              titleStyle: Styles.styleMedium16(context).copyWith(color: activeIndex==1?null: Colors.white),
              radius: activeIndex==1?50:40,
              value: 25,
              title:activeIndex==1?'Design product': '25%',
              color: Color(0xff4EB7F2)
          ),

          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex==2?1.4:null,
              titleStyle: Styles.styleMedium16(context).copyWith(color: activeIndex==2?null: Colors.white),
              radius:activeIndex==2?50:40,
              value: 20,
              title:activeIndex==2?'Product royalti': '20%',
              color: Color(0xff064061)
          ),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex==3?1.5:null,
              titleStyle: Styles.styleMedium16(context).copyWith(color: activeIndex==3?null: Colors.white),
              radius: activeIndex==3?50:40,
              value: 22,
              title:activeIndex==3?'Other': '22%',
              color: Color(0xffE2DECD)
          ),
        ]
    );
  }
}
