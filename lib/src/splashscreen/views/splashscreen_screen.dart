import 'package:grocery_app/common/services/storage.dart';
import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     _navigator();
//     super.initState();
//   }

//   _navigator() async {
//     await Future.delayed(const Duration(milliseconds: 3000), () {
//       if (Storage().getBool('firstOpen') == null) {
//         //Go to the onboarding screen
//         GoRouter.of(context).go('/onboarding');
//       } else {
//         //Go to home page
//         GoRouter.of(context).go('/home');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Kolors.kWhite,
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/splashscreen1.jpg"))),

//       ),
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  _navigator() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      if (Storage().getBool('firstOpen') == null) {
        //Go to the onboarding screen
        GoRouter.of(context).go('/onboarding');
      } else {
        //Go to home page
        GoRouter.of(context).go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splashscreen1.png"),
            fit: BoxFit.cover, // Ensures image fully covers the screen
          ),
        ),
      ),
    );
  }
}
