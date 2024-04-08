import 'package:swiftcafe/utils/constants/vectors.dart';
import '../../models/dashboard/beverage_model.dart';

class DataBase{
  //popular beverages
  static List<BeverageModel> popularBeverages = [
    BeverageModel(beverageImage: Vectors.coffee2, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
    BeverageModel(beverageImage: Vectors.coffee1, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
    BeverageModel(beverageImage: Vectors.coffee3, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
  ];

}
