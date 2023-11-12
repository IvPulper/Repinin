import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k12_screen/models/k12_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K12Screen.
///
/// This class manages the state of the K12Screen, including the
/// current k12ModelObj
class K12Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<K12Model> k12ModelObj = K12Model().obs;

  Rx<String> tf = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
