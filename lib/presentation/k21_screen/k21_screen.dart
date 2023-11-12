import 'controller/k21_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K21Screen extends GetWidget<K21Controller> {
  const K21Screen({Key? key}) : super(key: key);

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
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 61.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 35.v),
                              child: Text("lbl_00001".tr,
                                  style: CustomTextStyles
                                      .bodySmallErrorContainer)),
                          Spacer(flex: 54),
                          Padding(
                              padding: EdgeInsets.only(top: 18.v, bottom: 16.v),
                              child: Text("lbl48".tr,
                                  style: theme.textTheme.bodySmall)),
                          Spacer(flex: 45),
                          Padding(
                              padding: EdgeInsets.only(top: 35.v, right: 1.h),
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
            text: "lbl18".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
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

  /// Navigates to the k13Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k13Screen,
    );
  }
}
