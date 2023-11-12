import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:repinovich_s_applicationmobile/presentation/one_container_screen/models/one_container_model.dart';

/// A controller class for the OneContainerScreen.
///
/// This class manages the state of the OneContainerScreen, including the
/// current oneContainerModelObj
class OneContainerController extends GetxController {
  Rx<OneContainerModel> oneContainerModelObj = OneContainerModel().obs;
}
