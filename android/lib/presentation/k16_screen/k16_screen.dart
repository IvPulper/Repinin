import 'controller/k16_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_radio_button.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K16Screen extends GetWidget<K16Controller> {
  const K16Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Container(
                        margin: EdgeInsets.only(left: 1.h, bottom: 5.v),
                        decoration: AppDecoration.gradientOrangeToBlue501,
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(left: 28.h, right: 26.h),
                              child: CustomTextFormField(
                                  controller: controller.editTextController,
                                  hintText: "lbl23".tr)),
                          SizedBox(height: 9.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 27.h),
                              child: _buildRow()),
                          SizedBox(height: 9.v),
                          Padding(
                              padding: EdgeInsets.only(left: 28.h, right: 25.h),
                              child: _buildRow()),
                          SizedBox(height: 16.v),
                          _buildStackWithRadioGroup()
                        ]))))));
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
            text: "msg20".tr, margin: EdgeInsets.only(top: 58.v, bottom: 22.v)),
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
  Widget _buildStackWithRadioGroup() {
    return SizedBox(
        height: 280.v,
        width: 389.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 176.h, vertical: 8.v),
                  decoration: AppDecoration
                      .gradientOnPrimaryContainerToOnPrimaryContainer1,
                  child: Text("lbl27".tr, style: theme.textTheme.labelLarge))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() => Column(children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h, top: 43.v),
                        child: CustomRadioButton(
                            width: 335.h,
                            text: "lbl43".tr,
                            value:
                                controller.k16ModelObj.value.radioList.value[1],
                            groupValue: controller.radioGroup.value,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 10.v),
                            isRightCheck: true,
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            })),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h, top: 9.v),
                        child: CustomRadioButton(
                            width: 335.h,
                            text: "lbl44".tr,
                            value:
                                controller.k16ModelObj.value.radioList.value[2],
                            groupValue: controller.radioGroup.value,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 10.v),
                            isRightCheck: true,
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            }))
                  ])))
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
              child: Text("lbl42".tr, style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v))
        ]));
  }

  /// Navigates to the k8Screen when the action is triggered.
  onTapImgEXIT() {
    Get.toNamed(
      AppRoutes.k8Screen,
    );
  }

  /// Navigates to the k24Screen when the action is triggered.
  onTapImgOK() {
    Get.toNamed(
      AppRoutes.k24Screen,
    );
  }
}
