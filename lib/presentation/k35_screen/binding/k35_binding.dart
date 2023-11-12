import '../controller/k35_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K35Screen.
///
/// This class ensures that the K35Controller is created when the
/// K35Screen is first loaded.
class K35Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K35Controller());
  }
}
