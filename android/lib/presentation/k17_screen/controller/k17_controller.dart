import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k17_screen/models/k17_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K17Screen.
///
/// This class manages the state of the K17Screen, including the
/// current k17ModelObj
class K17Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<K17Model> k17ModelObj = K17Model().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
