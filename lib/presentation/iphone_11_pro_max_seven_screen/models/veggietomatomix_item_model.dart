/// This class is used in the [veggietomatomix_item_widget] screen.
class VeggietomatomixItemModel {
  VeggietomatomixItemModel({
    this.veggieTomatoMix,
    this.oneThousandNineHundred,
    this.id,
  }) {
    veggieTomatoMix = veggieTomatoMix ?? "Veggie tomato mix";
    oneThousandNineHundred = oneThousandNineHundred ?? "#1,900";
    id = id ?? "";
  }

  String? veggieTomatoMix;

  String? oneThousandNineHundred;

  String? id;
}
