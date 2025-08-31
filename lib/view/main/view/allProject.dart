// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/view/module/projectPage/desktopProjects.dart';
import 'package:portfolio/view/main/view/module/projectPage/mobileProjects.dart';

class AllProjects extends StatefulWidget {
  const AllProjects({super.key});

  @override
  State<AllProjects> createState() => _AllProjectsState();
}

class _AllProjectsState extends State<AllProjects> {
    List<QueryDocumentSnapshot> data = [];
  List<QueryDocumentSnapshot> skillsData = [];
  bool _isLoading = true;
  String? _error;
    final projectsKey = GlobalKey();

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
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text(_error!))
          : MediaQuery.of(context).size.width > 600
              ? desktopProjects(context: context, data: data, projectsKey: projectsKey)
              : mobileProjects(),
    );
  }
}