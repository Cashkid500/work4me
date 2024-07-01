import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Screen - Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splash),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Screen - Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingScreenElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Customer Registration - Empty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.phoneNumber),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP - Resend code".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpResendCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Screen - Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splash),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Customer Type".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.userType),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP - Filled".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.otpFilledScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Screen - Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingScreenNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Customer Registration - Empty One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customerRegistrationEmptyOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP - Empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.otp),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Customer Registration - Empty Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customerRegistrationEmptyTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP - Error".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.otpErrorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Customer Registration - Filled".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customerRegistrationFilledScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Registration Successful".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registrationSuccessfulScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}