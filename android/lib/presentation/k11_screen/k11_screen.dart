import 'controller/k11_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_radio_button.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K11Screen extends GetWidget<K11Controller> {
  const K11Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.v),
                    child: Padding(
                        padding: EdgeInsets.only(right: 1.h, bottom: 5.v),
                        child: Column(children: [
                          _buildEditText(),
                          SizedBox(height: 19.v),
                          Text("lbl24".tr, style: theme.textTheme.labelLarge),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 27.h),
                              child: _buildRow()),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 27.h),
                              child: _buildRow()),
                          SizedBox(height: 8.v),
                          _buildStack(),
                          SizedBox(height: 25.v),
                          Text("lbl34".tr, style: theme.textTheme.labelLarge),
                          SizedBox(height: 9.v),
                          _buildEditText1(),
                          SizedBox(height: 9.v),
                          _buildEditText2(),
                          SizedBox(height: 9.v),
                          _buildEditText3(),
                          SizedBox(height: 9.v),
                          _buildEditText4(),
                          SizedBox(height: 9.v),
                          _buildEditText5()
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
            text: "lbl16".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
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
  Widget _buildEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 26.h),
        child: CustomTextFormField(
            controller: controller.editTextController, hintText: "lbl23".tr));
  }

  /// Section Widget
  Widget _buildStack() {
    return SizedBox(
        height: 150.v,
        width: 389.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 175.h, vertical: 8.v),
                  decoration: AppDecoration
                      .gradientOnPrimaryContainerToOnPrimaryContainer1,
                  child: Text("lbl27".tr, style: theme.textTheme.labelLarge))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() => Column(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 40.v, right: 1.h),
                        child: CustomRadioButton(
                            width: 335.h,
                            text: "lbl30".tr,
                            value:
                                controller.k11ModelObj.value.radioList.value[1],
                            groupValue: controller.radioGroup.value,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 10.v),
                            isRightCheck: true,
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            })),
                    Padding(
                        padding: EdgeInsets.only(top: 7.v, right: 1.h),
                        child: CustomRadioButton(
                            width: 335.h,
                            text: "msg14".tr,
                            value:
                                controller.k11ModelObj.value.radioList.value[2],
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

  /// Section Widget
  Widget _buildEditText1() {
    return Padding(
        padding: EdgeInsets.only(left: 27.h, right: 26.h),
        child: CustomTextFormField(
            controller: controller.editTextController1, hintText: "lbl35".tr));
  }

  /// Section Widget
  Widget _buildEditText2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: CustomTextFormField(
            controller: controller.editTextController2, hintText: "lbl36".tr));
  }

  /// Section Widget
  Widget _buildEditText3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: CustomTextFormField(
            controller: controller.editTextController3, hintText: "msg16".tr));
  }

  /// Section Widget
  Widget _buildEditText4() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: CustomTextFormField(
            controller: controller.editTextController4, hintText: "msg17".tr));
  }

  /// Section Widget
  Widget _buildEditText5() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: CustomTextFormField(
            controller: controller.editTextController5,
            hintText: "msg18".tr,
            textInputAction: TextInputAction.done));
  }

  /// Common widget
  Widget _buildRow({Function? onTapArrowRight}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
        decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h, top: 6.v, bottom: 2.v),
              child: Text("lbl26".tr, style: theme.textTheme.bodySmall)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
              onTap: () {
                onTapArrowRight!.call();
              })
        ]));
  }

  /// Common widget
  Widget _buildWidget({
    required String userName,
    required String userScore,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(userName,
              style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.errorContainer.withOpacity(1)))),
      Padding(
          padding: EdgeInsets.only(left: 249.h, bottom: 2.v),
          child: Text(userScore,
              style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.errorContainer.withOpacity(1))))
    ]);
  }

  /// Navigates to the k3Screen when the action is triggered.
  onTapImgEXIT() {
    Get.toNamed(
      AppRoutes.k3Screen,
    );
  }

  /// Navigates to the k26Screen when the action is triggered.
  onTapImgOK() {
    Get.toNamed(
      AppRoutes.k26Screen,
    );
  }

  /// Navigates to the k18Screen when the action is triggered.
  onTapImgArrowRight() {
    Get.toNamed(
      AppRoutes.k18Screen,
    );
  }
}
