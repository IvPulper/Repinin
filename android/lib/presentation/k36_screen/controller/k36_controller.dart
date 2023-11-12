import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k36_screen/models/k36_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K36Screen.
///
/// This class manages the state of the K36Screen, including the
/// current k36ModelObj
class K36Controller extends GetxController {
  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

  Rx<K36Model> k36ModelObj = K36Model().obs;

  @override
  void onClose() {
    super.onClose();
    editText1Controller.dispose();
    editText2Controller.dispose();
    editText3Controller.dispose();
    editText4Controller.dispose();
  }
}
