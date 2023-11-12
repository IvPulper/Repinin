import '../controller/k32_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K32Screen.
///
/// This class ensures that the K32Controller is created when the
/// K32Screen is first loaded.
class K32Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K32Controller());
  }
}
