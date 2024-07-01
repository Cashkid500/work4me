import 'bloc/onboarding_screen_ten_bloc.dart';
import 'models/onboarding_screen_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/custom_elevated_button.dart';

class OnboardingScreenTenScreen extends StatelessWidget {
  const OnboardingScreenTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingScreenTenBloc>(
      create: (context) => OnboardingScreenTenBloc(OnboardingScreenTenState(
        onboardingScreenTenModelObj: OnboardingScreenTenModel(),
      ))
        ..add(OnboardingScreenTenInitialEvent()),
      child: OnboardingScreenTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingScreenTenBloc, OnboardingScreenTenState>(
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
                      horizontal: 33.h,
                      vertical: 95.v,
                    ),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.intro3,
                      height: 272.v,
                      width: 267.h,
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Text(
                    "msg_hassle_free_booking".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 308.h,
                    margin: EdgeInsets.only(right: 26.h),
                    child: Text(
                      "msg_securely_book_appointments".tr,
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
