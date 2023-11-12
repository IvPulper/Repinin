import '../controller/k7_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K7Screen.
///
/// This class ensures that the K7Controller is created when the
/// K7Screen is first loaded.
class K7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K7Controller());
  }
}
