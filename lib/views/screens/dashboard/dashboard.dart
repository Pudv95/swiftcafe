import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swiftcafe/models/dashboard/beverage_model.dart';
import 'package:swiftcafe/utils/constants/beverage_data.dart';
import 'package:swiftcafe/utils/constants/icons.dart';
import 'package:swiftcafe/views/widgets/dashboard/popular_beverages.dart';
import 'package:swiftcafe/views/widgets/dashboard/search_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.softLight),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              forceMaterialTransparency: true,
              leading: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '👋',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'NAME_OF_USER',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AppIcons.deleteIcon),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomSearchBar(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const PopularBeverages(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Get It Instantly',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        child: GetItInstantlyCard(
                          beverageModel: DataBase.getItInstantly[0],
                        ),
                      ),
                    ],
                  ),
                  ...List.generate(DataBase.getItInstantly.length, (index) {
                    return SizedBox(
                      height: 200,
                      child: GetItInstantlyCard(
                        beverageModel: DataBase.getItInstantly[index],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GetItInstantlyCard extends StatelessWidget {
  final BeverageModel beverageModel;
  const GetItInstantlyCard({super.key, required this.beverageModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.3),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 10, 15),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      beverageModel.beverageName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 20, color: Colors.grey[300]),
                    ),
                    Row(
                      children: [
                        Text(
                          '${beverageModel.rating} ⭐',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('(${beverageModel.orders})'),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(AppIcons.isVegIcon),
                      ],
                    ),
                    Text(
                      beverageModel.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey[400], height: 1.1),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage(beverageModel.beverageImage),
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.bottomCenter)),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('ADD'))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
