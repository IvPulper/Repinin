import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k21_screen/models/k21_model.dart';

/// A controller class for the K21Screen.
///
/// This class manages the state of the K21Screen, including the
/// current k21ModelObj
class K21Controller extends GetxController {
  Rx<K21Model> k21ModelObj = K21Model().obs;
}
