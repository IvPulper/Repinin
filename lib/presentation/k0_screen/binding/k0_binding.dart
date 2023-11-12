import '../controller/k0_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K0Screen.
///
/// This class ensures that the K0Controller is created when the
/// K0Screen is first loaded.
class K0Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K0Controller());
  }
}
