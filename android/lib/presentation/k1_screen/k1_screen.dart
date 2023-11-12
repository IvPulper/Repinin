import 'controller/k1_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

// ignore_for_file: must_be_immutable
class K1Screen extends GetWidget<K1Controller> {
  const K1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(57.h, 32.v, 57.h, 45.v),
              decoration: AppDecoration.gradientSecondaryContainerToYellow,
              child: Column(
                children: [
                  Text(
                    "lbl2".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 15.v),
                  _buildRow(
                    userImage: ImageConstant.imgVector44x39,
                    userLabel: "lbl3".tr,
                    widget: "lbl4".tr,
                    userImage1: ImageConstant.imgVector44x39,
                    userLabel1: "lbl5".tr,
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: _buildRow(
                      userImage: ImageConstant.imgVector31x39,
                      userLabel: "lbl3".tr,
                      widget: "lbl6".tr,
                      userImage1: ImageConstant.imgVector31x39,
                      userLabel1: "lbl7".tr,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 46.v),
                          child: _buildTen(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 136.v),
                          child: Text(
                            "lbl9".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 46.v),
                          child: _buildTen(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl11".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTen(),
                        _buildTen(),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRow({
    required String userImage,
    required String userLabel,
    required String widget,
    required String userImage1,
    required String userLabel1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 46.v,
            bottom: 1.v,
          ),
          child: Column(
            children: [
              Container(
                height: 91.adaptSize,
                width: 91.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 26.v,
                ),
                decoration: AppDecoration.gradientPinkToAmberA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder45,
                ),
                child: CustomImageView(
                  imagePath: userImage,
                  height: 31.v,
                  width: 39.h,
                  alignment: Alignment.bottomLeft,
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                userLabel,
                style: CustomTextStyles.bodySmall12.copyWith(
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 136.v),
          child: Text(
            widget,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.errorContainer.withOpacity(1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 46.v),
          child: Column(
            children: [
              Container(
                height: 91.adaptSize,
                width: 91.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 26.v,
                ),
                decoration: AppDecoration.gradientPinkToAmberA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder45,
                ),
                child: CustomImageView(
                  imagePath: userImage1,
                  height: 31.v,
                  width: 39.h,
                  alignment: Alignment.bottomLeft,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                userLabel1,
                style: CustomTextStyles.bodySmall12.copyWith(
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTen() {
    return Column(
      children: [
        Container(
          height: 91.adaptSize,
          width: 91.adaptSize,
          padding: EdgeInsets.all(23.h),
          decoration: AppDecoration.gradientOrangeToPink.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder45,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector42x42,
            height: 42.adaptSize,
            width: 42.adaptSize,
            alignment: Alignment.centerLeft,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          "lbl10".tr,
          style: CustomTextStyles.bodySmall12,
        ),
      ],
    );
  }
}
