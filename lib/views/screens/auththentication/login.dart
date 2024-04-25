import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftcafe/utils/constants/vectors.dart';
import 'package:swiftcafe/utils/routers/routes.dart';
import 'package:swiftcafe/utils/routers/routes_constants.dart';
import 'package:swiftcafe/views/screens/dashboard/dashboard.dart';
import 'package:swiftcafe/views/widgets/authentication/custom_input_field.dart';
import 'package:swiftcafe/views/widgets/authentication/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpeg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.brown, BlendMode.hardLight),
          ),
        ),
        child: Center(
          child: SizedBox(
            height: height*0.8,
            width: (356/width)*width,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(width: 0.5,color: Colors.white)
                  ),
                  color: Colors.white.withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child:  Column(
                      children: [
                        const Spacer(),
                        const Image(image: AssetImage(Vectors.logoImage)),
                        const SizedBox(height: 20,),
                        const Image(image: AssetImage(Vectors.logoText)),
                        const SizedBox(height: 20,),
                        Text('"Latte but never Late"',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          shadows: [
                            Shadow(
                              color: Colors.white.withOpacity(1),
                              blurRadius: 50,
                            ),
                          ],
                          fontSize: 15,
                        ),),
                        const SizedBox(height: 20,),
                        const CustomInputField(label: 'User Name',),
                        const SizedBox(height: 20,),
                        const CustomInputField(label: 'Password',),
                        const SizedBox(height: 20,),
                        LoginButton(onPressed: (){
                          GoRouter.of(context).goNamed(RouteNames.dashboard);
                        },),
                        const SizedBox(height: 20,),
                        SizedBox(
                            height: (50/height)*height,
                            width: (184/width)*width,
                            child: OutlinedButton(
                                onPressed: (){},
                              style: ButtonStyle(
                                side: WidgetStateProperty.resolveWith<BorderSide>(
                                      (states) => const BorderSide(width: 1, color: Colors.white),
                                ),
                              ),
                                child: Text('Sign Up',style: Theme.of(context).textTheme.displayMedium,),
                            )),
                        const SizedBox(height: 20,),
                        TextButton(onPressed: (){}, child: Text('Privacy Policy',style: Theme.of(context).textTheme.displaySmall,)),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
