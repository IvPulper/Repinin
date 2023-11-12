import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k32_screen/models/k32_model.dart';

/// A controller class for the K32Screen.
///
/// This class manages the state of the K32Screen, including the
/// current k32ModelObj
class K32Controller extends GetxController {
  Rx<K32Model> k32ModelObj = K32Model().obs;
}
