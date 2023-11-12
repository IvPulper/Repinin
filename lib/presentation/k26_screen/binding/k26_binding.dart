import '../controller/k26_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K26Screen.
///
/// This class ensures that the K26Controller is created when the
/// K26Screen is first loaded.
class K26Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K26Controller());
  }
}
