import 'package:flutter/material.dart';
import 'package:swiftcafe/models/beverage/coffee_model.dart';
import 'package:swiftcafe/models/dashboard/beverage_model.dart';
import 'package:swiftcafe/utils/constants/vectors.dart';

class MyBeverage extends StatelessWidget {
  final BeverageModel beverageModel;
  const MyBeverage({super.key, required this.beverageModel});



  @override
  Widget build(BuildContext context) {
    CoffeeModel coffeeModel = CoffeeModel.fromBeverageModel(beverageModel);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.brown, BlendMode.softLight),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: [
              Image.asset(Vectors.coffee4),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
