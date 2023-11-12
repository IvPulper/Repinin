import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k18_screen/models/k18_model.dart';

/// A controller class for the K18Screen.
///
/// This class manages the state of the K18Screen, including the
/// current k18ModelObj
class K18Controller extends GetxController {
  Rx<K18Model> k18ModelObj = K18Model().obs;
}
