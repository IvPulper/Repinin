import '../../../core/app_export.dart';

/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {
  ProductlistItemModel({
    this.widget,
    this.id,
  }) {
    widget = widget ?? Rx("Минимальная");
    id = id ?? Rx("");
  }

  Rx<String>? widget;

  Rx<String>? id;
}
