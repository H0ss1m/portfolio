import 'package:get/get.dart';

class PortfolioController extends GetxController {
  bool allIsSelected = true;
  bool webIsSelected = false;
  bool mobileIsSelected = false;
  bool desktopIsSelected = false;
  bool designIsSelected = false;

  void toggleAll() {
    allIsSelected = true;
    webIsSelected = false;
    mobileIsSelected = false;
    desktopIsSelected = false;
    designIsSelected = false;
    update();
  }

  void toggleWeb() {
    allIsSelected = false;
    webIsSelected = true;
    mobileIsSelected = false;
    desktopIsSelected = false;
    designIsSelected = false;
    update();
  }

  void toggleMobile() {
    allIsSelected = false;
    webIsSelected = false;
    mobileIsSelected = true;
    desktopIsSelected = false;
    designIsSelected = false;
    update();
  }

  void toggleDesktop() {
    allIsSelected = false;
    webIsSelected = false;
    mobileIsSelected = false;
    desktopIsSelected = true;
    designIsSelected = false;
    update();
  }

  void toggleDesign() {
    allIsSelected = false;
    webIsSelected = false;
    mobileIsSelected = false;
    desktopIsSelected = false;
    designIsSelected = true;
    update();
  }
}