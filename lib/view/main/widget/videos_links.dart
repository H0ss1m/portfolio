import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget videosLinks({
  required bool youtubeAvailable,
  required bool facebookAvailable,
  required bool tiktokAvailable,
  required bool linkedinAvailable,
  required String youtubeURL,
  required String facebookURL,
  required String tiktokURL,
  required String linkedinURL,
}) {
  return Row(
    children: [
      // YouTube Icon
      youtubeAvailable ? IconButton(
        onPressed: () {
          launchURL(youtubeURL);
        },
        icon: Image.asset(
          'assets/icons/youtube_videos.png',
          width: 24,
          height: 24,
        ),
      ) : Container(),

      // Facebook Icon
      facebookAvailable ? IconButton(
        onPressed: () {
          launchURL(facebookURL);
        },
        icon: Image.asset(
          'assets/icons/facebook_videos.png',
          width: 24,
          height: 24,
        ),
      ) : Container(),

      // TikTok Icon
      tiktokAvailable ?  IconButton(
        onPressed: () {
          launchURL(tiktokURL);
        },
        icon: Image.asset(
          'assets/icons/tiktok_videos.png',
          width: 24,
          height: 24,
        ),
      ) : Container(),

      // LinkedIn Icon
      linkedinAvailable ? IconButton(
        onPressed: () {
          launchURL(linkedinURL);
        },
        icon: Image.asset(
          'assets/icons/linkedin_videos.png',
          width: 24,
          height: 24,
        ),
      ) : Container(),
    ],
  );
}


void launchURL(String url) {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
