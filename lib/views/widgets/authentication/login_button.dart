import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftcafe/utils/routers/routes.dart';

class LoginButton extends StatelessWidget {
  final void Function()? onPressed;
  const LoginButton({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: (50/height)*height,
      width: (184/width)*width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(77, 43, 26, 1),
            Color.fromRGBO(167, 116, 90, 1),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ]
      ),
      child: ElevatedButton(
        onPressed: onPressed,
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
