import 'package:get/get.dart';
import 'package:instagram_clone/src/controller/bottom_nav_controller.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
