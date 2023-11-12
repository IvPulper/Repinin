import 'controller/k30_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K30Screen extends GetWidget<K30Controller> {
  const K30Screen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 28.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.v),
                    decoration: AppDecoration.gradientGrayToGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.img49x49,
                              height: 49.adaptSize,
                              width: 49.adaptSize,
                              radius: BorderRadius.circular(24.h),
                              margin: EdgeInsets.symmetric(vertical: 1.v)),
                          Expanded(
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, right: 3.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 186.h,
                                            child: Text("msg26".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmall8_1)),
                                        SizedBox(height: 18.v),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text("lbl_09261".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall8_1)),
                                              Container(
                                                  height: 2.adaptSize,
                                                  width: 2.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h,
                                                      top: 4.v,
                                                      bottom: 4.v),
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .errorContainer
                                                          .withOpacity(1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3.h, bottom: 1.v),
                                                  child: Text(
                                                      "lbl_742952001".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall8_1)),
                                              Spacer(),
                                              Text("lbl_234".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall8_1),
                                              CustomImageView(
                                                  imagePath: ImageConstant.img,
                                                  height: 7.adaptSize,
                                                  width: 7.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h,
                                                      top: 2.v,
                                                      bottom: 1.v))
                                            ])
                                      ])))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgUilQrcodeScan,
            margin: EdgeInsets.only(left: 27.h, top: 51.v, bottom: 18.v)),
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

  /// Navigates to the oneContainerScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.oneContainerScreen,
    );
  }
}
