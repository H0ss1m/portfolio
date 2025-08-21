import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/actions/projectFilters.dart';
import 'package:portfolio/view/main/view/module/desktopView.dart';
import 'package:portfolio/view/main/view/module/mobileView.dart';
import 'package:portfolio/view/main/widget/cuHeader.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<QueryDocumentSnapshot> data = [];
  bool _isLoading = true;
  String? _error;

  getData() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('project')
          .get();
      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          data = snapshot.docs;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = "Failed to load projects: $e";
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    Get.put(PortfolioController());
    getData();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double dartValue = 85;
  double flutterValue = 90;
  double photoshopValue = 75;
  double illustratorValue = 55;
  double websiteValue = 80;
  double desktopValue = 90;
  double excelValue = 70;
  double wordValue = 85;
  double powerPointValue = 90;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: cuHeader(context, _scaffoldKey),
      drawer: Drawer(),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text(_error!))
          : MediaQuery.of(context).size.width > 600
          ? desktopView(
              context,
              dartValue,
              flutterValue,
              photoshopValue,
              illustratorValue,
              websiteValue,
              desktopValue,
              excelValue,
              wordValue,
              powerPointValue,
              data: data,
            )
          : mobileView(),
    );
  }
}