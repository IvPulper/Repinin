import '../controller/k18_controller.dart';
import '../models/k0_item_model.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

// ignore: must_be_immutable
class K0ItemWidget extends StatelessWidget {
  K0ItemWidget(
    this.k0ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  K0ItemModel k0ItemModelObj;

  var controller = Get.find<K18Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer2
          .copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35.v),
            child: Obx(
              () => Text(
                k0ItemModelObj.text!.value,
                style: CustomTextStyles.bodySmallErrorContainer,
              ),
            ),
          ),
          Spacer(
            flex: 54,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 16.v,
            ),
            child: Obx(
              () => Text(
                k0ItemModelObj.widget!.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          Spacer(
            flex: 45,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 35.v,
              right: 1.h,
            ),
            child: Obx(
              () => Text(
                k0ItemModelObj.text1!.value,
                style: CustomTextStyles.bodySmallErrorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
