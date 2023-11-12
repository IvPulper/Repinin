import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k11_screen/models/k11_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K11Screen.
///
/// This class manages the state of the K11Screen, including the
/// current k11ModelObj
class K11Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

  Rx<K11Model> k11ModelObj = K11Model().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
    editTextController4.dispose();
    editTextController5.dispose();
  }
}
