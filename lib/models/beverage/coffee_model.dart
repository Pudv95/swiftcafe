import '../dashboard/beverage_model.dart';

class CoffeeModel extends BeverageModel {
  //Choice of Milk
  bool skimMilk;
  bool almondMilk;
  bool soyMilk;
  bool lactoseFreeMilk;
  bool fullCreamMilk;
  bool oatMilk;

  //Choice of Sugar
  bool oneX;
  bool halfX;
  bool twoX;
  bool none;

  CoffeeModel.fromBeverageModel(BeverageModel beverageModel, {
    this.skimMilk = false,
    this.almondMilk = false,
    this.soyMilk = false,
    this.lactoseFreeMilk = false,
    this.fullCreamMilk = false,
    this.oatMilk = false,
    this.oneX = false,
    this.halfX = false,
    this.twoX = false,
    this.none = false,
  }) : super(
    beverageImage: beverageModel.beverageImage,
    beverageName: beverageModel.beverageName,
    popularChoice: beverageModel.popularChoice,
    description: beverageModel.description,
    rating: beverageModel.rating,
    orders: beverageModel.orders,
  );

  CoffeeModel({
    required super.beverageImage,
    required super.beverageName,
    required super.popularChoice,
    required super.description,
    required super.rating,
    required super.orders,
    this.skimMilk = false,
    this.almondMilk = false,
    this.soyMilk = false,
    this.lactoseFreeMilk = false,
    this.fullCreamMilk = false,
    this.oatMilk = false,
    this.oneX = false,
    this.halfX = false,
    this.twoX = false,
    this.none = false,
  });
}
