import '../controller/k16_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K16Screen.
///
/// This class ensures that the K16Controller is created when the
/// K16Screen is first loaded.
class K16Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K16Controller());
  }
}
