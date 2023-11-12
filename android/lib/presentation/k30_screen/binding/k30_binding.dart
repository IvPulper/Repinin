import '../controller/k30_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K30Screen.
///
/// This class ensures that the K30Controller is created when the
/// K30Screen is first loaded.
class K30Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K30Controller());
  }
}
