import 'package:get/get.dart';
import '../pages/upload.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        Get.to(() => const UpLoads());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        changePage(value);
        break;
    }
  }

  void changePage(int value) {
    currentIndex(value);
  }
}
