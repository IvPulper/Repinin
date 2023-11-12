import '../controller/k33_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K33Screen.
///
/// This class ensures that the K33Controller is created when the
/// K33Screen is first loaded.
class K33Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K33Controller());
  }
}
