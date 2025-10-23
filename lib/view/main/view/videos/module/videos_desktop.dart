import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/view/videos/video_details.dart';
import 'package:portfolio/view/main/widget/videos_links.dart';

Widget videosDesktop({
  required BuildContext context,
  required List<QueryDocumentSnapshot> videosList,
}) {
  return LayoutBuilder(
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
                Get.to(
                  () => VideoDetails(
                    thumbUrl: videosList[index]['thump'],
                    title: videosList[index]['title'],
                    type: videosList[index]['type'],
                    description: videosList[index]['description'],
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                style: const TextStyle(fontSize: 16),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    videosLinks(
                      youtubeAvailable: videosList[index]['youtube'],
                      facebookAvailable: videosList[index]['facebook'],
                      tiktokAvailable: videosList[index]['tiktok'],
                      linkedinAvailable: videosList[index]['linkedin'],
                      youtubeURL: videosList[index]['youtubeLink'],
                      facebookURL: videosList[index]['facebookLink'],
                      tiktokURL: videosList[index]['tiktokLink'],
                      linkedinURL: videosList[index]['linkedinLink'],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
