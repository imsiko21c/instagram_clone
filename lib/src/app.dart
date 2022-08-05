import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/component/image_data.dart';
import 'package:instagram_clone/src/controller/bottom_nav_controller.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(),
          body: IndexedStack(index: controller.currentIndex.value, children: [
            Container(child: Center(child: Text('Home'))),
            Container(child: Center(child: Text('Search'))),
            Container(child: Center(child: Text('Upload'))),
            Container(child: Center(child: Text('Activity'))),
            Container(child: Center(child: Text('Mypage'))),
          ]),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeBottomNav,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.homeOff),
                  activeIcon: ImageData(IconsPath.homeon),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.searchOff),
                  activeIcon: ImageData(IconsPath.searchon),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.uploadIcon), label: 'upload'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.activeOff),
                  activeIcon: ImageData(IconsPath.activeon),
                  label: 'active'),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  label: 'avata'),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
