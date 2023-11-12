import '../../../core/app_export.dart';

/// This class is used in the [k0_item_widget] screen.
class K0ItemModel {
  K0ItemModel({
    this.text,
    this.widget,
    this.text1,
    this.id,
  }) {
    text = text ?? Rx("№00001");
    widget = widget ?? Rx("ОАО “Клиент”");
    text1 = text1 ?? Rx("17.10.2023");
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? widget;

  Rx<String>? text1;

  Rx<String>? id;
}
