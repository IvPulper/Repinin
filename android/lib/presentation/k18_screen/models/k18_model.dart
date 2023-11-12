import '../../../core/app_export.dart';
import 'k0_item_model.dart';

/// This class defines the variables used in the [k18_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K18Model {
  Rx<List<K0ItemModel>> k0ItemList = Rx([
    K0ItemModel(
        text: "№00001".obs,
        widget: "ОАО “Клиент”".obs,
        text1: "17.10.2023".obs),
    K0ItemModel(
        text: "№00001".obs,
        widget: "ОАО “Поставщик”".obs,
        text1: "17.10.2023".obs)
  ]);
}
