import '../controller/k18_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K18Screen.
///
/// This class ensures that the K18Controller is created when the
/// K18Screen is first loaded.
class K18Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K18Controller());
  }
}
