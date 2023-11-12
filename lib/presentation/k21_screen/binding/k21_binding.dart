import '../controller/k21_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K21Screen.
///
/// This class ensures that the K21Controller is created when the
/// K21Screen is first loaded.
class K21Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K21Controller());
  }
}
