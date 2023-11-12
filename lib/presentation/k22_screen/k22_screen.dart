import 'controller/k22_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K22Screen extends GetWidget<K22Controller> {
  const K22Screen({Key? key}) : super(key: key);

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
                        colors: [appTheme.orange30001, appTheme.blue50])),
                child: Container(
                    width: 339.h,
                    margin: EdgeInsets.fromLTRB(25.h, 61.v, 25.h, 5.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 3.v),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 17.v),
                          Text("lbl49".tr, style: theme.textTheme.bodySmall),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("lbl_17_10_2023".tr,
                                  style:
                                      CustomTextStyles.bodySmallErrorContainer))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl20".tr, margin: EdgeInsets.only(top: 58.v, bottom: 22.v)),
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

  /// Navigates to the k14Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k14Screen,
    );
  }
}
