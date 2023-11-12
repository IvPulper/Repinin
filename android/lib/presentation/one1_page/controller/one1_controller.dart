import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/one1_page/models/one1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the One1Page.
///
/// This class manages the state of the One1Page, including the
/// current one1ModelObj
class One1Controller extends GetxController {
  One1Controller(this.one1ModelObj);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

  TextEditingController editText5Controller = TextEditingController();

  TextEditingController editText6Controller = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<One1Model> one1ModelObj;

  @override
  void onClose() {
    super.onClose();
    editText1Controller.dispose();
    editText2Controller.dispose();
    editText3Controller.dispose();
    editText4Controller.dispose();
    editText5Controller.dispose();
    editText6Controller.dispose();
    priceController.dispose();
  }
}
