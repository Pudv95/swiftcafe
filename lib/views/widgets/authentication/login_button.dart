import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: (50/height)*height,
      width: (184/width)*width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(77, 43, 26, 1), // Brown
            Color.fromRGBO(167, 116, 90, 1),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Set the color of the shadow
            spreadRadius: 3, // Set the spread radius of the shadow
            blurRadius: 5, // Set the blur radius of the shadow
            offset: Offset(0, 3), // Set the offset of the shadow
          ),
        ]
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text('Login',style: Theme.of(context).textTheme.displayMedium,),
      ),
    );
  }
}
