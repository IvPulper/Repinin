import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k33_screen/models/k33_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K33Screen.
///
/// This class manages the state of the K33Screen, including the
/// current k33ModelObj
class K33Controller extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

  TextEditingController editTextController6 = TextEditingController();

  TextEditingController editTextController7 = TextEditingController();

  TextEditingController editTextController8 = TextEditingController();

  Rx<K33Model> k33ModelObj = K33Model().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
    editTextController4.dispose();
    editTextController5.dispose();
    editTextController6.dispose();
    editTextController7.dispose();
    editTextController8.dispose();
  }
}
