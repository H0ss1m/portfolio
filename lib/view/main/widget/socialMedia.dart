import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget socialMedia() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () {
          launchURL('https://www.instagram.com/h0ssam.7assan/');
        },
        icon: Image.asset(
          'assets/icons/instagram.png',
          fit: BoxFit.cover,
          color: Colors.black,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          launchURL('https://www.linkedin.com/in/hossam-7assan');
        },
        icon: Image.asset(
          'assets/icons/linkedin.png',
          fit: BoxFit.cover,
          color: Colors.black,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          launchURL('https://www.facebook.com/H0SSAM.7ASSAN');
        },
        icon: Image.asset(
          'assets/icons/facebook.png',
          fit: BoxFit.cover,
          color: Colors.black,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          launchURL('https://www.youtube.com/@h0ssam.7asan');
        },
        icon: Image.asset(
          'assets/icons/youtube.png',
          fit: BoxFit.cover,
          color: Colors.black,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          launchURL('https://github.com/H0ss1m');
        },
        icon: Image.asset(
          'assets/icons/github.png',
          fit: BoxFit.cover,
          color: Colors.black,
          width: 30,
        ),
      ),
    ],
  );
}

void launchURL(String url) {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
