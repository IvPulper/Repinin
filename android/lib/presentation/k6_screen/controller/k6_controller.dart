import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k6_screen/models/k6_model.dart';

/// A controller class for the K6Screen.
///
/// This class manages the state of the K6Screen, including the
/// current k6ModelObj
class K6Controller extends GetxController {
  Rx<K6Model> k6ModelObj = K6Model().obs;
}
