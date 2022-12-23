import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/hoofzy/home.png',
      selectedImagePath: 'assets/hoofzy/fav.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/hoofzy/fav.png',
      selectedImagePath: 'assets/hoofzy/bb.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/hoofzy/bb.png',
      selectedImagePath: 'assets/hoofzy/profile.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/hoofzy/profile.png',
      selectedImagePath: 'assets/hoofzy/home.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
