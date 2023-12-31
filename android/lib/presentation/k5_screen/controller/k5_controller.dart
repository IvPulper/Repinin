import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k5_screen/models/k5_model.dart';

/// A controller class for the K5Screen.
///
/// This class manages the state of the K5Screen, including the
/// current k5ModelObj
class K5Controller extends GetxController {
  Rx<K5Model> k5ModelObj = K5Model().obs;
}
