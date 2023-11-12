import '../controller/k11_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K11Screen.
///
/// This class ensures that the K11Controller is created when the
/// K11Screen is first loaded.
class K11Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K11Controller());
  }
}
