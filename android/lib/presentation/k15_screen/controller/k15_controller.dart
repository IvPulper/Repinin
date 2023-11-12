import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k15_screen/models/k15_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K15Screen.
///
/// This class manages the state of the K15Screen, including the
/// current k15ModelObj
class K15Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<K15Model> k15ModelObj = K15Model().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
