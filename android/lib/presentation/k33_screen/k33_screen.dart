import 'controller/k33_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/one1_page/one1_page.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_bottom_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

class K33Screen extends GetWidget<K33Controller> {
  const K33Screen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(top: 93.v, bottom: 50.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    gradient: LinearGradient(
                        begin: Alignment(-0.5, 1.54),
                        end: Alignment(1.33, -0.12),
                        colors: [appTheme.orange30001, appTheme.blue50])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 17.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 27.h),
                                  child: Column(children: [
                                    _buildRow(),
                                    SizedBox(height: 8.v),
                                    _buildEditText(),
                                    SizedBox(height: 8.v),
                                    _buildEditText1(),
                                    SizedBox(height: 8.v),
                                    _buildEditText2(),
                                    SizedBox(height: 8.v),
                                    _buildRow(),
                                    SizedBox(height: 8.v),
                                    _buildRow(),
                                    SizedBox(height: 24.v),
                                    Text("lbl74".tr,
                                        style: theme.textTheme.labelLarge),
                                    SizedBox(height: 9.v),
                                    _buildRow(),
                                    SizedBox(height: 9.v),
                                    _buildEditText3(),
                                    SizedBox(height: 9.v),
                                    _buildEditText4(),
                                    SizedBox(height: 9.v),
                                    _buildEditText5(),
                                    SizedBox(height: 9.v),
                                    _buildEditText6(),
                                    SizedBox(height: 9.v),
                                    _buildEditText7(),
                                    SizedBox(height: 9.v),
                                    _buildEditText8(),
                                    SizedBox(height: 28.v),
                                    Text("msg32".tr,
                                        style: theme.textTheme.labelLarge),
                                    SizedBox(height: 8.v),
                                    _buildRow()
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildBottomBar()));
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
            text: "lbl45".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
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
  Widget _buildEditText() {
    return CustomTextFormField(
        controller: controller.editTextController, hintText: "lbl56".tr);
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
        controller: controller.editTextController1, hintText: "lbl71".tr);
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
        controller: controller.editTextController2, hintText: "lbl72".tr);
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
        controller: controller.editTextController3, hintText: "msg31".tr);
  }

  /// Section Widget
  Widget _buildEditText4() {
    return CustomTextFormField(
        controller: controller.editTextController4, hintText: "lbl76".tr);
  }

  /// Section Widget
  Widget _buildEditText5() {
    return CustomTextFormField(
        controller: controller.editTextController5, hintText: "lbl77".tr);
  }

  /// Section Widget
  Widget _buildEditText6() {
    return CustomTextFormField(
        controller: controller.editTextController6, hintText: "lbl78".tr);
  }

  /// Section Widget
  Widget _buildEditText7() {
    return CustomTextFormField(
        controller: controller.editTextController7, hintText: "lbl79".tr);
  }

  /// Section Widget
  Widget _buildEditText8() {
    return CustomTextFormField(
        controller: controller.editTextController8,
        hintText: "lbl80".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Onprimarycontainer:
        return AppRoutes.one1Page;
      case BottomBarEnum.Onprimarycontainer24x24:
        return "/";
      case BottomBarEnum.x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.one1Page:
        return One1Page();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the k32Screen when the action is triggered.
  onTapEXIT() {
    Get.toNamed(
      AppRoutes.k32Screen,
    );
  }

  /// Navigates to the k34Screen when the action is triggered.
  onTapOK() {
    Get.toNamed(
      AppRoutes.k34Screen,
    );
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

  /// Navigates to the k18Screen when the action is triggered.
  onTapImgArrowRight2() {
    Get.toNamed(
      AppRoutes.k18Screen,
    );
  }
}
