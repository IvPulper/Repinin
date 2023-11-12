import '../controller/k24_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K24Screen.
///
/// This class ensures that the K24Controller is created when the
/// K24Screen is first loaded.
class K24Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K24Controller());
  }
}
