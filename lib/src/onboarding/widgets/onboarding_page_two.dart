import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/common/utils/kstrings.dart';
import 'package:grocery_app/common/widgets/app_style.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class OnboardingScreenTwo extends StatelessWidget {
//   const OnboardingScreenTwo({super.key});

//  @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: ScreenUtil().screenWidth,
//       height: ScreenUtil().screenHeight,
//       child: Stack(
//         children: [
//           Image.asset(
//             ("assets/images/wishlist1.jpg"),
//             fit: BoxFit.cover,
//           ),
//           Positioned(
//               bottom: 200,
//               left: 30,
//               right: 30,
//               child: Text(
//                 AppText.kOnboardWishListMessage,
//                 textAlign: TextAlign.center,
//                 style: appStyle(11, Kolors.kGray, FontWeight.normal),
//               ))
//         ],
//       ),
//     );
//   }
// }

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Padding(
        padding: EdgeInsets.only(top: 50), // Moves everything down by 50 pixels
        child: Stack(
          children: [
            Image.asset(
              "assets/images/wishlist2.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 150, // Adjusted from 200 to move text down
              left: 30,
              right: 30,
              child: Text(
                AppText.kOnboardWishListMessage,
                textAlign: TextAlign.center,
                style: appStyle(11, Kolors.kGray, FontWeight.normal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
