import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k2_screen/models/k2_model.dart';

/// A controller class for the K2Screen.
///
/// This class manages the state of the K2Screen, including the
/// current k2ModelObj
class K2Controller extends GetxController {
  Rx<K2Model> k2ModelObj = K2Model().obs;
}
