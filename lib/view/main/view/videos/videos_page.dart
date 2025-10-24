import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/view/videos/module/videos_desktop.dart';
import 'package:portfolio/view/main/view/videos/module/videos_mobile.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  List<QueryDocumentSnapshot> videos = [];
  bool _isLoading = true;
  String? _error;

  getData() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('videos')
          .get();

      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          videos = snapshot.docs;
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
          ? const VideosDesktop()
          : videosMobile(),
    );
  }
}
