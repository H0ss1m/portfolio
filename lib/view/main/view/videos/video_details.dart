import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({
    super.key,
    required this.thumbUrl,
    required this.title,
    required this.type,
    required this.description,
  });

  final String thumbUrl;
  final String title;
  final String type;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: mainColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          type,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                  Image.network(thumbUrl, fit: BoxFit.contain),
                ],
              ),
              Column(
                children: [
                  Text(
                    'الوصف',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // MarkdownBlock(data: description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
