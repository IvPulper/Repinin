import '../controller/k6_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K6Screen.
///
/// This class ensures that the K6Controller is created when the
/// K6Screen is first loaded.
class K6Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K6Controller());
  }
}
