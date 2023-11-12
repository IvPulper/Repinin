import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k26_screen/models/k26_model.dart';

/// A controller class for the K26Screen.
///
/// This class manages the state of the K26Screen, including the
/// current k26ModelObj
class K26Controller extends GetxController {
  Rx<K26Model> k26ModelObj = K26Model().obs;
}
