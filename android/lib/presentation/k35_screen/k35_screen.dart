import 'controller/k35_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K35Screen extends GetWidget<K35Controller> {
  const K35Screen({Key? key}) : super(key: key);

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
                    child: _buildTwentyColumn()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgExit,
            margin: EdgeInsets.only(left: 32.h, top: 50.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl81".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTwentyColumn() {
    return Container(
        margin: EdgeInsets.only(left: 27.h, right: 27.h, bottom: 5.v),
        decoration: AppDecoration.gradientOrangeToBlue501,
        child: Column(children: [
          _buildRow(),
          SizedBox(height: 8.v),
          CustomTextFormField(
              controller: controller.editTextController, hintText: "lbl56".tr),
          SizedBox(height: 8.v),
          CustomTextFormField(
              controller: controller.editTextController1, hintText: "lbl71".tr),
          SizedBox(height: 8.v),
          CustomTextFormField(
              controller: controller.editTextController2,
              hintText: "lbl72".tr,
              textInputAction: TextInputAction.done),
          SizedBox(height: 8.v),
          _buildRow(),
          SizedBox(height: 8.v),
          _buildRow(),
          SizedBox(height: 8.v),
          _buildRow()
        ]));
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
              child: Text("msg30".tr, style: theme.textTheme.bodySmall)),
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

  /// Navigates to the k18Screen when the action is triggered.
  onTapImgArrowRight() {
    Get.toNamed(
      AppRoutes.k18Screen,
    );
  }

  /// Navigates to the k36Screen when the action is triggered.
  onTapImgArrowRight1() {
    Get.toNamed(
      AppRoutes.k36Screen,
    );
  }
}
