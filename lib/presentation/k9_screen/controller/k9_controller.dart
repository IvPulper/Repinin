import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k9_screen/models/k9_model.dart';

/// A controller class for the K9Screen.
///
/// This class manages the state of the K9Screen, including the
/// current k9ModelObj
class K9Controller extends GetxController {
  Rx<K9Model> k9ModelObj = K9Model().obs;
}
