import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class TestController extends GetxController {
  //TODO: Implement TestController

  final whiteHoverMenus = <PlutoMenuItem>[].obs;
  final orangeHoverMenus = <PlutoMenuItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    whiteHoverMenus.assignAll(_makeMenus());
    orangeHoverMenus.assignAll(_makeMenus());
  }

  void message(String text) {
    Get.snackbar('Message', text);
  }

  List<PlutoMenuItem> _makeMenus() {
    return [
      PlutoMenuItem(
        title: 'Menu 1',
        icon: Icons.home,
        children: [
          PlutoMenuItem(
            title: 'Menu 1-1',
            icon: Icons.group,
            onTap: () => message('Menu 1-1 tap'),
            children: [
              PlutoMenuItem(
                title: 'Menu 1-1-1',
                onTap: () => message('Menu 1-1-1 tap'),
                children: [
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-1',
                    onTap: () => message('Menu 1-1-1-1 tap'),
                  ),
                  PlutoMenuItem(
                    title: 'Menu 1-1-1-2',
                    onTap: () => message('Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Menu 1-1-2',
                onTap: () => message('Menu 1-1-2 tap'),
              ),
            ],
          ),
          PlutoMenuItem(
            title: 'Menu 1-2',
            onTap: () => message('Menu 1-2 tap'),
          ),
          PlutoMenuItem(
            title: 'Menu 1-3',
            onTap: () => message('Menu 1-3 tap'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 2',
        icon: Icons.add_circle,
        children: [
          PlutoMenuItem(
            title: 'Menu 2-1',
            onTap: () => message('Menu 2-1 tap'),
          ),
        ],
      ),
      PlutoMenuItem(
        title: 'Menu 3',
        icon: Icons.apps_outlined,
        onTap: () => message('Menu 3 tap'),
      ),
    ];
  }
}
