import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k34_screen/models/k34_model.dart';

/// A controller class for the K34Screen.
///
/// This class manages the state of the K34Screen, including the
/// current k34ModelObj
class K34Controller extends GetxController {
  Rx<K34Model> k34ModelObj = K34Model().obs;
}
