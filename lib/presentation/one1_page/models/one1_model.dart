import '../../../core/app_export.dart';
import 'productlist_item_model.dart';

/// This class defines the variables used in the [one1_page],
/// and is typically used to hold data that is passed between different parts of the application.
class One1Model {
  Rx<List<ProductlistItemModel>> productlistItemList = Rx([
    ProductlistItemModel(widget: "Минимальная".obs),
    ProductlistItemModel(widget: "Цена закупки".obs)
  ]);
}
