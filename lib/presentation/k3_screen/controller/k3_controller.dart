import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k3_screen/models/k3_model.dart';

/// A controller class for the K3Screen.
///
/// This class manages the state of the K3Screen, including the
/// current k3ModelObj
class K3Controller extends GetxController {
  Rx<K3Model> k3ModelObj = K3Model().obs;
}
