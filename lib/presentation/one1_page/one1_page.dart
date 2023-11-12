import '../one1_page/widgets/productlist_item_widget.dart';
import 'controller/one1_controller.dart';
import 'models/one1_model.dart';
import 'models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_leading_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class One1Page extends StatelessWidget {
  One1Page({Key? key}) : super(key: key);

  One1Controller controller = Get.put(One1Controller(One1Model().obs));

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
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.h),
                        child: Column(children: [
                          Container(
                              height: 140.adaptSize,
                              width: 140.adaptSize,
                              padding: EdgeInsets.all(58.h),
                              decoration: AppDecoration
                                  .gradientOnPrimaryContainerToOnPrimaryContainer4
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder70),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgErrorcontainer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.center)),
                          SizedBox(height: 18.v),
                          _buildEditText1(),
                          SizedBox(height: 8.v),
                          _buildRow(),
                          SizedBox(height: 9.v),
                          _buildEditText2(),
                          SizedBox(height: 8.v),
                          _buildEditText3(),
                          SizedBox(height: 33.v),
                          Text("lbl58".tr, style: theme.textTheme.labelLarge),
                          SizedBox(height: 13.v),
                          _buildProductList(),
                          SizedBox(height: 22.v),
                          Text("lbl62".tr, style: theme.textTheme.labelLarge),
                          SizedBox(height: 7.v),
                          _buildRow(),
                          SizedBox(height: 8.v),
                          _buildEditText4(),
                          SizedBox(height: 8.v),
                          _buildRow(),
                          SizedBox(height: 8.v),
                          _buildColumn1(),
                          SizedBox(height: 8.v),
                          _buildEditText5(),
                          SizedBox(height: 8.v),
                          _buildEditText6(),
                          SizedBox(height: 8.v),
                          _buildRow(),
                          SizedBox(height: 24.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 126.h),
                                  child: Text("lbl69".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 7.v),
                          _buildPrice()
                        ]))))));
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
        controller: controller.editText1Controller, hintText: "lbl25".tr);
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
        controller: controller.editText2Controller, hintText: "lbl56".tr);
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
        controller: controller.editText3Controller, hintText: "lbl57".tr);
  }

  /// Section Widget
  Widget _buildProductList() {
    return SizedBox(
        height: 117.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount:
                controller.one1ModelObj.value.productlistItemList.value.length,
            itemBuilder: (context, index) {
              ProductlistItemModel model = controller
                  .one1ModelObj.value.productlistItemList.value[index];
              return ProductlistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildEditText4() {
    return CustomTextFormField(
        controller: controller.editText4Controller, hintText: "lbl64".tr);
  }

  /// Section Widget
  Widget _buildColumn1() {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v),
        decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Text("lbl65".tr, style: theme.textTheme.bodySmall));
  }

  /// Section Widget
  Widget _buildEditText5() {
    return CustomTextFormField(
        controller: controller.editText5Controller, hintText: "lbl66".tr);
  }

  /// Section Widget
  Widget _buildEditText6() {
    return CustomTextFormField(
        controller: controller.editText6Controller, hintText: "lbl67".tr);
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

  /// Navigates to the k30Screen when the action is triggered.
  onTapOK() {
    Get.toNamed(
      AppRoutes.k30Screen,
    );
  }

  /// Navigates to the k18Screen when the action is triggered.
  onTapImgArrowRight() {
    Get.toNamed(
      AppRoutes.k18Screen,
    );
  }
}
