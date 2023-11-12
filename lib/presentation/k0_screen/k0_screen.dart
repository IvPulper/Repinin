import 'controller/k0_controller.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/widgets/custom_elevated_button.dart';

class K0Screen extends GetWidget<K0Controller> {
  const K0Screen({Key? key}) : super(key: key);

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
                        begin: Alignment(0, 0.5),
                        end: Alignment(1, 0.5),
                        colors: [
                          appTheme.gray300,
                          appTheme.gray300,
                          appTheme.deepOrange50
                        ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          SizedBox(
                              height: 842.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.img111,
                                        height: 842.v,
                                        width: 390.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 17.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_repnin".tr,
                                                      style: theme.textTheme
                                                          .displayMedium),
                                                  SizedBox(height: 17.v),
                                                  SizedBox(
                                                      width: 251.h,
                                                      child: Text("msg".tr,
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .headlineLarge)),
                                                  SizedBox(height: 148.v),
                                                  CustomElevatedButton(
                                                      width: 238.h,
                                                      text: "lbl".tr,
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .none,
                                                      decoration: CustomButtonStyles
                                                          .gradientOnPrimaryContainerToOnPrimaryContainerDecoration,
                                                      buttonTextStyle: theme
                                                          .textTheme.bodyLarge!,
                                                      onPressed: () {
                                                        onTaptf();
                                                      },
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                  ]))
                        ])))));
  }

  /// Navigates to the k1Screen when the action is triggered.
  onTaptf() {
    Get.toNamed(
      AppRoutes.k1Screen,
    );
  }
}
