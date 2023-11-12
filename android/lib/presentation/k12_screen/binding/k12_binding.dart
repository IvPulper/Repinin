import '../controller/k12_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K12Screen.
///
/// This class ensures that the K12Controller is created when the
/// K12Screen is first loaded.
class K12Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K12Controller());
  }
}
