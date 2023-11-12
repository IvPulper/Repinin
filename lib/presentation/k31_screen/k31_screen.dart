import '../k31_screen/widgets/k1_item_widget.dart';
import 'controller/k31_controller.dart';
import 'models/k1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/core/utils/validation_functions.dart';
import 'package:repinovich_s_applicationmobile/presentation/one1_page/one1_page.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_bottom_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K31Screen extends GetWidget<K31Controller> {
  K31Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 27.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 27.h),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse6,
                                            height: 140.adaptSize,
                                            width: 140.adaptSize,
                                            radius:
                                                BorderRadius.circular(70.h)),
                                        SizedBox(height: 18.v),
                                        _buildEditText(),
                                        SizedBox(height: 8.v),
                                        _buildRow(),
                                        SizedBox(height: 9.v),
                                        _buildZipcode(),
                                        SizedBox(height: 8.v),
                                        _buildEditText1(),
                                        SizedBox(height: 33.v),
                                        Text("lbl58".tr,
                                            style: theme.textTheme.labelLarge),
                                        SizedBox(height: 13.v),
                                        _buildTf(),
                                        SizedBox(height: 22.v),
                                        Text("lbl62".tr,
                                            style: theme.textTheme.labelLarge),
                                        SizedBox(height: 7.v),
                                        _buildRow(),
                                        SizedBox(height: 8.v),
                                        _buildEditText2(),
                                        SizedBox(height: 8.v),
                                        _buildRow(),
                                        SizedBox(height: 8.v),
                                        _buildColumn(),
                                        SizedBox(height: 8.v),
                                        _buildEditText3(),
                                        SizedBox(height: 8.v),
                                        _buildEditText4(),
                                        SizedBox(height: 8.v),
                                        _buildRow(),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 126.h),
                                                child: Text("lbl69".tr,
                                                    style: theme.textTheme
                                                        .labelLarge))),
                                        SizedBox(height: 7.v),
                                        _buildPrice()
                                      ]))))
                        ])))),
            bottomNavigationBar: _buildBottomBar()));
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
            text: "lbl55".tr, margin: EdgeInsets.only(top: 57.v, bottom: 23.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgOk,
              margin: EdgeInsets.fromLTRB(26.h, 52.v, 26.h, 17.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
        controller: controller.editTextController, hintText: "msg27".tr);
  }

  /// Section Widget
  Widget _buildZipcode() {
    return CustomTextFormField(
        controller: controller.zipcodeController, hintText: "lbl_09261".tr);
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
        controller: controller.editTextController1,
        hintText: "lbl_742952001".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildTf() {
    return SizedBox(
        height: 117.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: controller.k31ModelObj.value.k1ItemList.value.length,
            itemBuilder: (context, index) {
              K1ItemModel model =
                  controller.k31ModelObj.value.k1ItemList.value[index];
              return K1ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
        controller: controller.editTextController2, hintText: "lbl64".tr);
  }

  /// Section Widget
  Widget _buildColumn() {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v),
        decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Text("lbl65".tr, style: theme.textTheme.bodySmall));
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
        controller: controller.editTextController3, hintText: "lbl66".tr);
  }

  /// Section Widget
  Widget _buildEditText4() {
    return CustomTextFormField(
        controller: controller.editTextController4, hintText: "lbl67".tr);
  }

  /// Section Widget
  Widget _buildPrice() {
    return CustomTextFormField(
        controller: controller.priceController,
        hintText: "lbl_ean13".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 7.v, 15.h, 6.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgUilqrcodescanErrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 37.v),
        contentPadding: EdgeInsets.only(left: 19.h, top: 12.v, bottom: 12.v));
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
              padding: EdgeInsets.only(left: 6.h, top: 5.v, bottom: 3.v),
              child: Text("lbl63".tr, style: theme.textTheme.bodySmall)),
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

  /// Navigates to the k18Screen when the action is triggered.
  onTapImgArrowRight() {
    Get.toNamed(
      AppRoutes.k18Screen,
    );
  }
}
