import '../controller/k31_controller.dart';
import '../models/k1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

// ignore: must_be_immutable
class K1ItemWidget extends StatelessWidget {
  K1ItemWidget(
    this.k1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  K1ItemModel k1ItemModelObj;

  var controller = Get.find<K31Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer5
          .copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      width: 101.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Text(
              k1ItemModelObj.widget!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 54.v),
          SizedBox(
            width: 68.h,
            child: Divider(
              color: theme.colorScheme.errorContainer.withOpacity(1),
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
