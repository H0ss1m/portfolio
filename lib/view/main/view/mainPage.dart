import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/actions/projectFilters.dart';
import 'package:portfolio/view/main/view/module/mainPage/desktopView.dart';
import 'package:portfolio/view/main/view/module/mainPage/mobileView.dart';
import 'package:portfolio/view/main/widget/cuHeader.dart';
import 'package:portfolio/view/main/widget/drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<QueryDocumentSnapshot> data = [];
  List<QueryDocumentSnapshot> skillsData = [];
  List<QueryDocumentSnapshot> cv = [];
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
  getCV() async {
    try {
      QuerySnapshot cvLink = await FirebaseFirestore.instance
          .collection('cv')
          .get();

      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          cv = cvLink.docs;
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

  getSkillsData() async {
    try {
      QuerySnapshot snapshot2 = await FirebaseFirestore.instance
          .collection('skills')
          .get();
      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          skillsData = snapshot2.docs;
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
    getSkillsData();
    getCV();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final homeKey = GlobalKey();
  final aboutMeKey = GlobalKey();
  final servicesKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  Future<void> scrollToSection(GlobalKey key) async {
    if (key.currentContext != null) {
      final context = key.currentContext!;
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: cuHeader(
        context,
        _scaffoldKey,
        cvData: cv,
        homeOnPressed: () => scrollToSection(homeKey),
        videosOnPressed: () => Get.toNamed('/videos'),
        aboutMeOnPressed: () => scrollToSection(aboutMeKey),
        servicesOnPressed: () => scrollToSection(servicesKey),
        projectsOnPressed: () => scrollToSection(projectsKey),
        contactOnPressed: () => scrollToSection(contactKey),
      ),
      drawer: Drawer(
        child: cuDrawer(
          context: context,
          homeKey: homeKey,
          aboutKey: aboutMeKey,
          servicesKey: servicesKey,
          projectsKey: projectsKey,
          contactKey: contactKey,
          cvData: cv,
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text(_error!))
          : MediaQuery.of(context).size.width > 600
          ? desktopView(
              context,
              skillsData: skillsData,
              data: data,
              scaffoldKey: _scaffoldKey,
              homeKey: homeKey,
              aboutMeKey: aboutMeKey,
              servicesKey: servicesKey,
              projectsKey: projectsKey,
              contactKey: contactKey,
            )
          : mobileView(
              context: context,
              homeKey: homeKey,
              aboutKey: aboutMeKey,
              skillsData: skillsData,
              servicesKey: servicesKey,
              data: data,
              projectsKey: projectsKey,
              contact: contactKey,
            ),
    );
  }
}
