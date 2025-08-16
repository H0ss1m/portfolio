import 'package:flutter/material.dart';
import 'package:portfolio/view/main/view/module/desktopView.dart';
import 'package:portfolio/view/main/view/module/mobileView.dart';
import 'package:portfolio/view/main/widget/cuHeader.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double dartValue = 85;
  double flutterValue = 90;
  double photoshopValue = 75;
  double illustratorValue = 55;
  double websiteValue = 80;
  double desktopValue = 90;
  bool allIsSelected = false;
  bool webIsSelected = true;
  bool mobileIsSelected = false;
  bool desktopIsSelected = false;
  bool designIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: cuHeader(context, _scaffoldKey),
      drawer: Drawer(),
      body: MediaQuery.of(context).size.width > 600
          ? desktopView(
              context,
              dartValue,
              flutterValue,
              photoshopValue,
              illustratorValue,
              websiteValue,
              desktopValue,
              allIsSelected,
              webIsSelected,
              mobileIsSelected,
              desktopIsSelected,
              designIsSelected,
            )
          : mobileView(),
    );
  }
}
