import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k14_screen/models/k14_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K14Screen.
///
/// This class manages the state of the K14Screen, including the
/// current k14ModelObj
class K14Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<K14Model> k14ModelObj = K14Model().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
