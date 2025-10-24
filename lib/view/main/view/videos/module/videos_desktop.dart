import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/view/videos/video_details.dart';
import 'package:portfolio/view/main/widget/videos_links.dart';

class VideosDesktop extends StatefulWidget {
  const VideosDesktop({super.key});

  @override
  State<VideosDesktop> createState() => _VideosDesktopState();
}

class _VideosDesktopState extends State<VideosDesktop> {
  List<QueryDocumentSnapshot> videosList = [];
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
          videosList = snapshot.docs;
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
          : LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final int crossAxisCount = width > 700 ? 3 : 2;

                double childAspectRatio;
                if (width > 1008) {
                  childAspectRatio = 1;
                } else if (width > 900) {
                  childAspectRatio = 0.88;
                } else if (width > 800) {
                  childAspectRatio = 0.8;
                } else if (width > 700) {
                  childAspectRatio = 0.75;
                } else {
                  childAspectRatio = 0.88;
                }

                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: childAspectRatio,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    itemCount: videosList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // showDialog(
                          //   barrierDismissible: true,
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return videoDetails();
                          //   },
                          // );
                          Get.dialog(
                            VideoDetails(
                              thumbUrl: videosList[index]['thump'],
                              title: videosList[index]['title'],
                              type: videosList[index]['type'],
                              description: videosList[index]['description'],
                              youtubeAvailable: videosList[index]['youtube'],
                              facebookAvailable: videosList[index]['facebook'],
                              tiktokAvailable: videosList[index]['tiktok'],
                              linkedinAvailable: videosList[index]['linkedin'],
                              youtubeURL: videosList[index]['youtubeLink'],
                              facebookURL: videosList[index]['facebookLink'],
                              tiktokURL: videosList[index]['tiktokLink'],
                              linkedinURL: videosList[index]['linkedinLink'],
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5,
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      videosList[index]['thump'],
                                      fit: BoxFit.contain,
                                      width: double.infinity,
                                    ),
                                    const SizedBox(height: 20),
                                    Column(
                                      textDirection: TextDirection.rtl,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          videosList[index]['title'],
                                          style: TextStyle(
                                            fontSize: width > 1200 ? 18 : 13,
                                            fontWeight: FontWeight.bold,
                                            color: mainColor,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        Text(
                                          videosList[index]['type'],
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: videosLinks(
                                  youtubeAvailable:
                                      videosList[index]['youtube'],
                                  facebookAvailable:
                                      videosList[index]['facebook'],
                                  tiktokAvailable: videosList[index]['tiktok'],
                                  linkedinAvailable:
                                      videosList[index]['linkedin'],
                                  youtubeURL: videosList[index]['youtubeLink'],
                                  facebookURL:
                                      videosList[index]['facebookLink'],
                                  tiktokURL: videosList[index]['tiktokLink'],
                                  linkedinURL:
                                      videosList[index]['linkedinLink'],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
