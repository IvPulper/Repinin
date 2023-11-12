import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k27_screen/models/k27_model.dart';

/// A controller class for the K27Screen.
///
/// This class manages the state of the K27Screen, including the
/// current k27ModelObj
class K27Controller extends GetxController {
  Rx<K27Model> k27ModelObj = K27Model().obs;
}
