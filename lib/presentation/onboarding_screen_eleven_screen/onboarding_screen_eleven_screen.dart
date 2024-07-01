import 'bloc/onboarding_screen_eleven_bloc.dart';
import 'models/onboarding_screen_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/custom_elevated_button.dart';

class OnboardingScreenElevenScreen extends StatelessWidget {
  const OnboardingScreenElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenElevenBloc>(
      create: (context) =>
          OnboardingScreenElevenBloc(OnboardingScreenElevenState(
        onboardingScreenElevenModelObj: OnboardingScreenElevenModel(),
      ))
            ..add(OnboardingScreenElevenInitialEvent()),
      child: OnboardingScreenElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenElevenBloc, OnboardingScreenElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 76.v,
                    ),
                    decoration: AppDecoration.fillYellow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 18.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1261152867,
                          height: 292.v,
                          width: 329.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.v),
                  Text(
                    "msg_find_what_you_need".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 13.v),
                  Container(
                    width: 310.h,
                    margin: EdgeInsets.only(right: 24.h),
                    child: Text(
                      "msg_from_plumbers_to".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildFrame(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 72.h,
            text: "lbl_skip".tr,
          ),
          Container(
            height: 8.v,
            margin: EdgeInsets.symmetric(vertical: 16.v),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.onPrimaryContainer,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          CustomElevatedButton(
            width: 72.h,
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.fillBlue,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
        ],
      ),
    );
  }
}
