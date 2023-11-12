import 'controller/k14_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_elevated_button.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K14Screen extends GetWidget<K14Controller> {
  const K14Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(child: _buildScrollView()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 32.h, top: 50.v, bottom: 15.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgExit,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgEXIT();
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgExit,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.center)
            ])),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl38".tr, margin: EdgeInsets.only(top: 58.v, bottom: 22.v)),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(26.h, 52.v, 26.h, 17.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgOk,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.bottomRight,
                    onTap: () {
                      onTapImgOK();
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgOk,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.bottomCenter)
              ]))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Container(
        margin: EdgeInsets.only(right: 1.h, bottom: 5.v),
        decoration: AppDecoration.gradientOrangeToBlue501,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 28.h, right: 26.h),
              child: CustomTextFormField(
                  controller: controller.editTextController,
                  hintText: "lbl23".tr,
                  textInputAction: TextInputAction.done)),
          SizedBox(height: 16.v),
          SizedBox(
              height: 232.v,
              width: 389.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 175.h, vertical: 8.v),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToOnPrimaryContainer1,
                        child: Text("lbl27".tr,
                            style: theme.textTheme.labelLarge))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              margin: EdgeInsets.only(left: 10.h, right: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Column(children: [
                                CustomElevatedButton(
                                    text: "msg13".tr,
                                    margin:
                                        EdgeInsets.only(left: 3.h, right: 10.h),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientPrimaryToPrimaryDecoration),
                                SizedBox(height: 16.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl28".tr,
                                          style: CustomTextStyles
                                              .labelMediumErrorContainer_1),
                                      Text("lbl_0_00".tr,
                                          style: CustomTextStyles
                                              .labelMediumErrorContainer_1)
                                    ])
                              ])),
                          SizedBox(height: 43.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: _buildRow()),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: _buildRow())
                        ])))
              ])),
          SizedBox(height: 26.v),
          Text("lbl32".tr, style: theme.textTheme.labelLarge),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child: _buildRow())
        ]));
  }

  /// Common widget
  Widget _buildRow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h, top: 6.v, bottom: 2.v),
              child: Text("lbl40".tr, style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Navigates to the k6Screen when the action is triggered.
  onTapImgEXIT() {
    Get.toNamed(
      AppRoutes.k6Screen,
    );
  }

  /// Navigates to the k22Screen when the action is triggered.
  onTapImgOK() {
    Get.toNamed(
      AppRoutes.k22Screen,
    );
  }
}
