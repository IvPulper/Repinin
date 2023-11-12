import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k20_screen/models/k20_model.dart';

/// A controller class for the K20Screen.
///
/// This class manages the state of the K20Screen, including the
/// current k20ModelObj
class K20Controller extends GetxController {
  Rx<K20Model> k20ModelObj = K20Model().obs;
}
