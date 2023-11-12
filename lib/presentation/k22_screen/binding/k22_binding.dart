import '../controller/k22_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K22Screen.
///
/// This class ensures that the K22Controller is created when the
/// K22Screen is first loaded.
class K22Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K22Controller());
  }
}
