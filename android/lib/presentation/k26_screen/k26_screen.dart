import 'controller/k26_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K26Screen extends GetWidget<K26Controller> {
  const K26Screen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("lbl46".tr,
                                        style: theme.textTheme.bodySmall),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 58.h, top: 2.v),
                                        child: Text("lbl_36829_99".tr,
                                            style: CustomTextStyles.bodySmall8))
                                  ])),
                          SizedBox(height: 5.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("lbl_00001".tr,
                                        style: CustomTextStyles
                                            .bodySmallErrorContainer)),
                                Text("lbl_17_10_2023".tr,
                                    style: CustomTextStyles
                                        .bodySmallErrorContainer)
                              ])
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl16".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
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

  /// Navigates to the k11Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k11Screen,
    );
  }
}
