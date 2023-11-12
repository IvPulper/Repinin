import '../../../core/app_export.dart';

/// This class is used in the [k1_item_widget] screen.
class K1ItemModel {
  K1ItemModel({
    this.widget,
    this.id,
  }) {
    widget = widget ?? Rx("Минимальная");
    id = id ?? Rx("");
  }

  Rx<String>? widget;

  Rx<String>? id;
}
