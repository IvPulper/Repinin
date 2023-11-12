import '../../../core/app_export.dart';
import 'k1_item_model.dart';

/// This class defines the variables used in the [k31_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K31Model {
  Rx<List<K1ItemModel>> k1ItemList = Rx([
    K1ItemModel(widget: "Минимальная".obs),
    K1ItemModel(widget: "Цена закупки".obs)
  ]);
}
