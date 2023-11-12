import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k30_screen/models/k30_model.dart';

/// A controller class for the K30Screen.
///
/// This class manages the state of the K30Screen, including the
/// current k30ModelObj
class K30Controller extends GetxController {
  Rx<K30Model> k30ModelObj = K30Model().obs;
}
