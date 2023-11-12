import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgOnprimarycontainer,
      activeIcon: ImageConstant.imgOnprimarycontainer,
      type: BottomBarEnum.Onprimarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgOnprimarycontainer24x24,
      activeIcon: ImageConstant.imgOnprimarycontainer24x24,
      type: BottomBarEnum.Onprimarycontainer24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.img24x24,
      activeIcon: ImageConstant.img24x24,
      type: BottomBarEnum.x24,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.v,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.27, 0.5),
          end: Alignment(-0.22, 0.5),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.errorContainer.withOpacity(1),
            theme.colorScheme.errorContainer,
          ],
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Onprimarycontainer,
  Onprimarycontainer24x24,
  x24,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
