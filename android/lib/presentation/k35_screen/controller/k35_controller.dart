import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k35_screen/models/k35_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K35Screen.
///
/// This class manages the state of the K35Screen, including the
/// current k35ModelObj
class K35Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  Rx<K35Model> k35ModelObj = K35Model().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
  }
}
