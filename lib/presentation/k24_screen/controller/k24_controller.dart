import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k24_screen/models/k24_model.dart';

/// A controller class for the K24Screen.
///
/// This class manages the state of the K24Screen, including the
/// current k24ModelObj
class K24Controller extends GetxController {
  Rx<K24Model> k24ModelObj = K24Model().obs;
}
