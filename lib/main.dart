import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/view/main/view/allProject.dart';
import 'package:portfolio/view/main/view/mainPage.dart';
import 'package:portfolio/view/main/view/videos/video_details.dart';
import 'package:portfolio/view/main/view/videos/videos_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', useMaterial3: true),
      title: 'Hossam\'s Portfolio',
      home: MainPage(),
      initialRoute: '/mainPage',
      getPages: [
        GetPage(name: '/mainPage', page: () => const MainPage()),
        GetPage(name: '/allProjects', page: () => const AllProjects()),
        GetPage(name: '/videos', page: () => VideosPage()),
      ],
    );
  }
}
