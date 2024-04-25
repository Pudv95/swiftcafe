import 'package:flutter/material.dart';

import '../../../models/dashboard/beverage_model.dart';
import '../../../utils/constants/icons.dart';
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
                    Text(beverageModel.beverageName,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20,color: Colors.grey[300]),),
                    Row(
                      children: [
                        Text('${beverageModel.rating} ⭐',),
                        const SizedBox(width: 10,),
                        Text('(${beverageModel.orders})'),
                        const SizedBox(width: 20,),
                        Image.asset(AppIcons.isVegIcon),
                      ],
                    ),
                    Text(
                      beverageModel.description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[400],height: 1.1),
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
                                  image: AssetImage(beverageModel.beverageImage),
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
                            onPressed: () {}, child: const Text('ADD'))),
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