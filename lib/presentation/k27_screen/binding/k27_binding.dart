import '../controller/k27_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K27Screen.
///
/// This class ensures that the K27Controller is created when the
/// K27Screen is first loaded.
class K27Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K27Controller());
  }
}
