import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k31_screen/models/k31_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K31Screen.
///
/// This class manages the state of the K31Screen, including the
/// current k31ModelObj
class K31Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<K31Model> k31ModelObj = K31Model().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    zipcodeController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
    editTextController4.dispose();
    priceController.dispose();
  }
}
