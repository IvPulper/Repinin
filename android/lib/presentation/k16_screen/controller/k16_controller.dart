import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k16_screen/models/k16_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K16Screen.
///
/// This class manages the state of the K16Screen, including the
/// current k16ModelObj
class K16Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<K16Model> k16ModelObj = K16Model().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
