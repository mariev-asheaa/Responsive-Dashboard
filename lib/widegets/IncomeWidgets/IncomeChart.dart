import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class Incomechart extends StatefulWidget {
  const Incomechart({super.key});

  @override
  State<Incomechart> createState() => _IncomechartState();
}

class _IncomechartState extends State<Incomechart> {
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
          showTitle: false,
          radius: activeIndex==0?50:40,
          value: 40,
          color: Color(0xff208CC8)
        ),
        PieChartSectionData(
            showTitle: false,
            radius: activeIndex==1?50:40,
          value: 25,
          color: Color(0xff4EB7F2)
        ),
        PieChartSectionData(
            showTitle: false,
            radius:activeIndex==2?50:40,
            value: 20,
            color: Color(0xff064061)
        ),
        PieChartSectionData(
            showTitle: false,
            radius: activeIndex==3?50:40,
            value: 22,
            color: Color(0xffE2DECD)
        ),
      ]
    );
  }
}
