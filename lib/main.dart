import 'package:device_preview/device_preview.dart';
import 'package:expenses_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    enabled: true,
      builder:(context)=> ResposiveDashBoard())
  );
}

class ResposiveDashBoard extends StatelessWidget {
  const ResposiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Dashboardview(),
    );
  }
}
