import 'controller/k36_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K36Screen extends GetWidget<K36Controller> {
  const K36Screen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 17.v),
                    child: _buildEleven()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgExit,
            margin: EdgeInsets.only(left: 32.h, top: 50.v, bottom: 15.v),
            onTap: () {
              onTapEXIT();
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl82".tr, margin: EdgeInsets.only(top: 58.v, bottom: 22.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOk,
              margin: EdgeInsets.fromLTRB(26.h, 52.v, 26.h, 17.v),
              onTap: () {
                onTapOK();
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
        controller: controller.editText1Controller, hintText: "lbl83".tr);
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
        controller: controller.editText2Controller, hintText: "lbl84".tr);
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
        controller: controller.editText3Controller, hintText: "lbl71".tr);
  }

  /// Section Widget
  Widget _buildEditText4() {
    return CustomTextFormField(
        controller: controller.editText4Controller,
        hintText: "lbl72".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildEleven() {
    return Container(
        margin: EdgeInsets.only(left: 27.h, right: 27.h, bottom: 5.v),
        decoration: AppDecoration.gradientOrangeToBlue501,
        child: Column(children: [
          _buildEditText1(),
          SizedBox(height: 8.v),
          _buildEditText2(),
          SizedBox(height: 8.v),
          _buildEditText3(),
          SizedBox(height: 8.v),
          _buildEditText4(),
          SizedBox(height: 8.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
              decoration: AppDecoration
                  .gradientOnPrimaryContainerToOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(left: 6.h, top: 6.v, bottom: 2.v),
                        child:
                            Text("lbl33".tr, style: theme.textTheme.bodySmall)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 1.v))
                  ]))
        ]));
  }

  /// Navigates to the k35Screen when the action is triggered.
  onTapEXIT() {
    Get.toNamed(
      AppRoutes.k35Screen,
    );
  }

  /// Navigates to the k35Screen when the action is triggered.
  onTapOK() {
    Get.toNamed(
      AppRoutes.k35Screen,
    );
  }
}
