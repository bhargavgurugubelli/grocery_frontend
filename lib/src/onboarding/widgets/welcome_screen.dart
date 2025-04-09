import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/common/utils/kstrings.dart';
import 'package:grocery_app/common/widgets/app_style.dart';
import 'package:grocery_app/common/widgets/custom_button.dart';
import 'package:grocery_app/common/widgets/reusable_text.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kolors.kWhite,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/getstarted1.png",
                width: double.infinity, // Ensures full-width
                fit: BoxFit.cover, // Covers the entire available space
              ),
              SizedBox(height: 30.h),
              Text(
                AppText.kWelcomeHeader,
                textAlign: TextAlign.center,
                style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: ScreenUtil().screenWidth - 100,
                child: Text(
                  AppText.kWelcomeMessage,
                  textAlign: TextAlign.center,
                  style: appStyle(11, Kolors.kGray, FontWeight.normal),
                ),
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: AppText.kGetStarted,
                btnHieght: 35,
                radius: 20,
                btnWidth: ScreenUtil().screenWidth - 100,
                onTap: () {
                  context.go('/home');
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableText(
                    text: "Already have an account?",
                    style: appStyle(12, Kolors.kDark, FontWeight.normal),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/login');
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
