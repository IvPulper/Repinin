import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k10_screen/models/k10_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K10Screen.
///
/// This class manages the state of the K10Screen, including the
/// current k10ModelObj
class K10Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<K10Model> k10ModelObj = K10Model().obs;

  Rx<String> tf = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
