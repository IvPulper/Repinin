import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/k7_screen/models/k7_model.dart';

/// A controller class for the K7Screen.
///
/// This class manages the state of the K7Screen, including the
/// current k7ModelObj
class K7Controller extends GetxController {
  Rx<K7Model> k7ModelObj = K7Model().obs;
}
