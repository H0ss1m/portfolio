import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/videos_links.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({
    super.key,
    required this.thumbUrl,
    required this.title,
    required this.type,
    required this.description,
    required this.youtubeAvailable,
    required this.facebookAvailable,
    required this.tiktokAvailable,
    required this.linkedinAvailable,
    required this.youtubeURL,
    required this.facebookURL,
    required this.tiktokURL,
    required this.linkedinURL,
  });

  final String thumbUrl;
  final String title;
  final String type;
  final String description;
  final bool youtubeAvailable;
  final bool facebookAvailable;
  final bool tiktokAvailable;
  final bool linkedinAvailable;
  final String youtubeURL;
  final String facebookURL;
  final String tiktokURL;
  final String linkedinURL;

  bool isArabic(String text) {
    return RegExp(r'[\u0600-\u06FF]').hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 40,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: mainColor,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            type,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          videosLinks(
                            youtubeAvailable: youtubeAvailable,
                            facebookAvailable: facebookAvailable,
                            tiktokAvailable: tiktokAvailable,
                            linkedinAvailable: linkedinAvailable,
                            youtubeURL: youtubeURL,
                            facebookURL: facebookURL,
                            tiktokURL: tiktokURL,
                            linkedinURL: linkedinURL,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.network(thumbUrl, fit: BoxFit.contain),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      'الــوصــف',
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Directionality(
                      textDirection: isArabic(description)
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                      child: MarkdownBlock(data: description, selectable: true),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
