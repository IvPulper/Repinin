import '../k18_screen/widgets/k0_item_widget.dart';
import 'controller/k18_controller.dart';
import 'models/k0_item_model.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_title.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/appbar_trailing_image.dart';
import 'package:repinovich_s_applicationmobile/widgets/app_bar/custom_app_bar.dart';

class K18Screen extends GetWidget<K18Controller> {
  const K18Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    gradient: LinearGradient(
                        begin: Alignment(-0.5, 1.54),
                        end: Alignment(1.33, -0.12),
                        colors: [appTheme.orange30001, appTheme.blue50])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      _buildUp(),
                      SizedBox(height: 61.v),
                      _buildTf()
                    ])))));
  }

  /// Section Widget
  Widget _buildUp() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(children: [
          SizedBox(height: 13.v),
          CustomAppBar(
              height: 24.v,
              centerTitle: true,
              title: AppbarTitle(text: "lbl45".tr),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.img1,
                    margin: EdgeInsets.symmetric(horizontal: 26.h),
                    onTap: () {
                      onTapImage();
                    })
              ])
        ]));
  }

  /// Section Widget
  Widget _buildTf() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: controller.k18ModelObj.value.k0ItemList.value.length,
                itemBuilder: (context, index) {
                  K0ItemModel model =
                      controller.k18ModelObj.value.k0ItemList.value[index];
                  return K0ItemWidget(model);
                }))));
  }

  /// Navigates to the k33Screen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.k33Screen,
    );
  }
}
