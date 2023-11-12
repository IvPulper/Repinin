import '../controller/k34_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K34Screen.
///
/// This class ensures that the K34Controller is created when the
/// K34Screen is first loaded.
class K34Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K34Controller());
  }
}
