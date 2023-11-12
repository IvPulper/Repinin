import '../controller/k31_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K31Screen.
///
/// This class ensures that the K31Controller is created when the
/// K31Screen is first loaded.
class K31Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K31Controller());
  }
}
