import 'controller/one_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class OneScreen extends GetWidget<OneController> {
  const OneScreen({Key? key}) : super(key: key);

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
                    height: 751.v,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 23.h, top: 61.v, right: 23.h),
                    child: Stack(
                        alignment: Alignment.topCenter,
                        children: [_buildEighteen(), _buildThirteen()])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(
            text: "msg21".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
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

  /// Section Widget
  Widget _buildEighteen() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 5.h, top: 41.v),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
            decoration: AppDecoration
                .gradientOnPrimaryContainerToOnPrimaryContainer3
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL36),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 44.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 37.h),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 50.v, bottom: 23.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_100_000".tr,
                                      style: CustomTextStyles.bodySmall8_1),
                                  SizedBox(height: 15.v),
                                  Text("lbl_50_000".tr,
                                      style: CustomTextStyles.bodySmall8_1),
                                  SizedBox(height: 9.v),
                                  Text("lbl_20_000".tr,
                                      style: CustomTextStyles.bodySmall8_1),
                                  SizedBox(height: 15.v),
                                  Text("lbl_10_000".tr,
                                      style: CustomTextStyles.bodySmall8_1),
                                  SizedBox(height: 8.v),
                                  Text("lbl_1_000".tr,
                                      style: CustomTextStyles.bodySmall8_1)
                                ])),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Column(children: [
                                  Text("msg23".tr,
                                      style: theme.textTheme.labelLarge),
                                  SizedBox(height: 41.v),
                                  SizedBox(
                                      height: 114.v,
                                      width: 226.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 9.v),
                                                    child: SizedBox(
                                                        width: 226.h,
                                                        child: Divider(
                                                            color: theme
                                                                .colorScheme
                                                                .primaryContainer)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 45.v),
                                                    child: SizedBox(
                                                        width: 226.h,
                                                        child: Divider()))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 26.v),
                                                    child: SizedBox(
                                                        width: 226.h,
                                                        child: Divider()))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 24.v),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Divider(),
                                                          SizedBox(
                                                              height: 20.v),
                                                          Divider()
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                    width: 226.h,
                                                    child: Divider())),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorYellow900,
                                                height: 102.v,
                                                width: 20.h,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: 12.h)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 24.h,
                                                        bottom: 1.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgVector,
                                                                    height:
                                                                        51.v,
                                                                    width:
                                                                        16.h),
                                                                SizedBox(
                                                                    height:
                                                                        3.v),
                                                                Text("lbl51".tr,
                                                                    style: CustomTextStyles
                                                                        .acuminProErrorContainer)
                                                              ]),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 43.v,
                                                              width: 15.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 4.h,
                                                                      top: 7.v,
                                                                      bottom: 11
                                                                          .v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 30.v,
                                                              width: 14.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          19.h,
                                                                      top: 20.v,
                                                                      bottom: 11
                                                                          .v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 27.v,
                                                              width: 15.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          21.h,
                                                                      top: 23.v,
                                                                      bottom: 11
                                                                          .v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 24.v,
                                                              width: 13.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          18.h,
                                                                      top: 26.v,
                                                                      bottom:
                                                                          11.v))
                                                        ]))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorRed500,
                                                height: 25.v,
                                                width: 226.h,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                margin: EdgeInsets.only(
                                                    bottom: 12.v)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLine1,
                                                height: 9.v,
                                                width: 226.h,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                margin: EdgeInsets.only(
                                                    bottom: 5.v)),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Text("lbl52".tr,
                                                        style: theme.textTheme
                                                            .labelSmall)))
                                          ]))
                                ])))
                      ])),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl50".tr,
                                style:
                                    CustomTextStyles.labelMediumErrorContainer),
                            TextSpan(
                                text: "msg_1293282".tr,
                                style: theme.textTheme.bodySmall)
                          ]),
                          textAlign: TextAlign.left))
                ])));
  }

  /// Section Widget
  Widget _buildThirteen() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 3.h, right: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 3.v),
            decoration: AppDecoration
                .gradientOnPrimaryContainerToOnPrimaryContainer2
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
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
                          style: CustomTextStyles.bodySmallErrorContainer))
                ])));
  }

  /// Navigates to the k17Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k17Screen,
    );
  }
}
