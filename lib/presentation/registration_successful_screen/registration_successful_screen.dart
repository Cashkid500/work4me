import 'bloc/registration_successful_bloc.dart';
import 'models/registration_successful_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/custom_elevated_button.dart';

class RegistrationSuccessfulScreen extends StatelessWidget {
  const RegistrationSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationSuccessfulBloc>(
      create: (context) =>
          RegistrationSuccessfulBloc(RegistrationSuccessfulState(
        registrationSuccessfulModelObj: RegistrationSuccessfulModel(),
      ))
            ..add(RegistrationSuccessfulInitialEvent()),
      child: RegistrationSuccessfulScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationSuccessfulBloc, RegistrationSuccessfulState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 20.v),
              child: Column(
                children: [
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgSuccess1,
                    height: 370.v,
                    width: 375.h,
                  ),
                  SizedBox(height: 96.v),
                  Text(
                    "msg_registration_successful".tr,
                    style: CustomTextStyles.headlineSmallBlack900,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "msg_click_on_the_button".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildLogInButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_log_in".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
    );
  }
}
