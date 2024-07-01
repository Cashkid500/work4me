import 'bloc/splash_bloc.dart';
import 'models/onboarding_screen_four_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) => SplashBloc(SplashState(
            onboardingScreenFourModelObj: OnboardingScreenFourModel()))
          ..add(OnboardingScreenFourInitialEvent()),
        child: Splash());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
                  child: Column(children: [
                    SizedBox(height: 5.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 113.h, vertical: 293.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.logo,
                                  height: 92.v,
                                  width: 102.h),
                              SizedBox(height: 10.v),
                              Text("lbl_work4me".tr,
                                  style:
                                      CustomTextStyles.headlineSmallOnPrimary)
                            ]))
                  ]))));
    });
  }
}
