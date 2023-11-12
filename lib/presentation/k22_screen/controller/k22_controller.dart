import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k22_screen/models/k22_model.dart';

/// A controller class for the K22Screen.
///
/// This class manages the state of the K22Screen, including the
/// current k22ModelObj
class K22Controller extends GetxController {
  Rx<K22Model> k22ModelObj = K22Model().obs;
}
