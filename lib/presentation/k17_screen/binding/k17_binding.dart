import '../controller/k17_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K17Screen.
///
/// This class ensures that the K17Controller is created when the
/// K17Screen is first loaded.
class K17Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K17Controller());
  }
}
