import 'package:swiftcafe/utils/constants/vectors.dart';
import '../../models/dashboard/beverage_model.dart';

class DataBase{
  //popular beverages
  static List<BeverageModel> popularBeverages = [
    BeverageModel(beverageImage: Vectors.coffee2, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
    BeverageModel(beverageImage: Vectors.coffee1, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
    BeverageModel(beverageImage: Vectors.coffee3, beverageName: 'Hot Cappuccino', popularChoice: 'Espresso, Steamed Milk', description: '', rating: 4.9, orders: 458),
  ];

  static List<BeverageModel> getItInstantly = [
    BeverageModel(beverageImage: Vectors.coffee4, beverageName: 'Lattè', popularChoice: '', description: 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.', rating: 4.9, orders: 458),
    BeverageModel(beverageImage: Vectors.coffee5, beverageName: 'Flat White', popularChoice: '', description: 'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.', rating: 4.9, orders: 458),
  ];

}
