import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swiftcafe/utils/constants/icons.dart';
import 'package:swiftcafe/views/widgets/dashboard/search_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text('NAME_OF_USER',style: Theme.of(context).textTheme.bodyLarge,)
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
            body:  const Column(
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomSearchBar(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
