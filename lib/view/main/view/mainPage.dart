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
  double graphicDesignValue = 75;
  double uiUxDesignValue = 55;
  bool allIsSelected = false;
  bool webIsSelected = true;
  bool mobileIsSelected = false;

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
              graphicDesignValue,
              uiUxDesignValue,
              allIsSelected,
              webIsSelected,
              mobileIsSelected,
            )
          : mobileView(),
    );
  }
}
