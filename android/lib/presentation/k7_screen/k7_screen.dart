import 'controller/k7_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K7Screen extends GetWidget<K7Controller> {
  const K7Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: EdgeInsets.only(top: 93.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    gradient: LinearGradient(
                        begin: Alignment(-0.5, 1.54),
                        end: Alignment(1.33, -0.12),
                        colors: [appTheme.orange300, appTheme.blue50])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 175.v),
                    child: Column(children: [
                      Text("lbl22".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgQuestionsPana1,
                          height: 203.adaptSize,
                          width: 203.adaptSize),
                      SizedBox(height: 11.v),
                      SizedBox(
                          width: 260.h,
                          child: Text("msg8".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl21".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.img1,
              margin: EdgeInsets.fromLTRB(26.h, 51.v, 26.h, 18.v),
              onTap: () {
                onTapImage();
              })
        ],
        styleType: Style.bgFill);
  }

  /// Navigates to the k15Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k15Screen,
    );
  }
}
