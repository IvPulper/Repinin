import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k13_screen/models/k13_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K13Screen.
///
/// This class manages the state of the K13Screen, including the
/// current k13ModelObj
class K13Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<K13Model> k13ModelObj = K13Model().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
