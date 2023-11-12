import '../controller/one_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneContainerScreen.
///
/// This class ensures that the OneContainerController is created when the
/// OneContainerScreen is first loaded.
class OneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneContainerController());
  }
}
