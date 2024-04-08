import 'package:flutter/material.dart';
import 'package:swiftcafe/models/dashboard/beverage_model.dart';
import 'package:swiftcafe/utils/constants/beverage_data.dart';
import 'package:swiftcafe/utils/constants/icons.dart';

class PopularBeverages extends StatelessWidget {
  const PopularBeverages({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: (380 / height) * height,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Most popular Beverages',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: (280 / height) * height,
            width: width,
            child: ListView.builder(
              itemCount: DataBase.popularBeverages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                      width: width / 2,
                      height: 200,
                      child: PopularBeverageCard(
                          beverageModel: DataBase.popularBeverages[index])),
                );
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class PopularBeverageCard extends StatelessWidget {
  final BeverageModel beverageModel;
  const PopularBeverageCard({super.key, required this.beverageModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Spacer(),
              Image(
                image: AssetImage(beverageModel.beverageImage),
                width: 120,
                height: 120,
              ),
              const Spacer(),
              Text(
                beverageModel.beverageName,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 8,),
              Text(
                beverageModel.popularChoice,
                style: const TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text('${beverageModel.rating} ⭐'),
                  Text('(${beverageModel.orders})'),
                  const Spacer(),
                 IconButton(onPressed: (){}, icon: const Image(image: AssetImage(AppIcons.addIcon))),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
