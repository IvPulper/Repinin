import '../controller/k15_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K15Screen.
///
/// This class ensures that the K15Controller is created when the
/// K15Screen is first loaded.
class K15Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K15Controller());
  }
}
