import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/common/utils/kstrings.dart';
import 'package:grocery_app/common/widgets/app_style.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class OnboardingScreenOne extends StatelessWidget {
//   const OnboardingScreenOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: ScreenUtil().screenWidth,
//       height: ScreenUtil().screenHeight,
//       child: Stack(
//         children: [
//           Image.asset(
//            ("assets/images/experience1.jpg"),
//             fit: BoxFit.cover,
//           ),
//           Positioned(
//               bottom: 200,
//               left: 30,
//               right: 30,
//               child: Text(
//                 AppText.kOnboardHome,
//                 textAlign: TextAlign.center,
//                 style: appStyle(11, Kolors.kGray, FontWeight.normal),
//               ))
//         ],
//       ),
//     );
//   }
// }

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          Positioned(
            top: 20, // Moves the image slightly down
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/experience2.png",
              fit: BoxFit.cover,
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
            ),
          ),
          Positioned(
            bottom: 200,
            left: 30,
            right: 30,
            child: Text(
              AppText.kOnboardHome,
              textAlign: TextAlign.center,
              style: appStyle(11, Kolors.kGray, FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}

