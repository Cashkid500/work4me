import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:workforme/core/utils/validation_functions.dart';
import 'package:workforme/presentation/registration/phone_number/custom_phone_number.dart';
import 'package:workforme/widgets/custom_text_form_field.dart';

import 'bloc/phone_number_bloc.dart';
import 'models/phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/app_bar/appbar_leading_image.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';
import 'package:workforme/widgets/custom_outlined_button.dart';
import 'package:workforme/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class PhoneNumber extends StatelessWidget {
  PhoneNumber({Key? key}) : super(key: key);
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 
  static Widget builder(BuildContext context) {
    return BlocProvider<PhoneNumberBloc>(
        create: (context) => PhoneNumberBloc(
            PhoneNumberState(
                phoneNumberModelObj:
                    PhoneNumberModel()))
          ..add(PhoneNumberInitialEvent()),
        child: PhoneNumber());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 9.v),
                            child: SizedBox(
                              height: SizeUtils.height,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        children: [
                                          _buildAppBar(context),
                                          SizedBox(height: 7.v),
                                          Text("lbl_verification".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallGray90003),
                                          SizedBox(height: 9.v),
                                          Text("msg_enter_your_phone".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray800e0)
                                        ]),
                                    SizedBox(height: 36.v),
                                    BlocBuilder<PhoneNumberBloc, PhoneNumberState>(
                                        builder: (context, state) {
                                      return CustomPhoneNumber(
                                          controller: state.phoneNumberController);
                                    }),
                                    Spacer()
                                  ]),
                            ))))),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorGray90003,
            margin: EdgeInsets.fromLTRB(24.h, 4.v, 335.h, 4.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  Widget _buildContinueButton(BuildContext context) {
    return BlocBuilder<PhoneNumberBloc, PhoneNumberState>(
      builder: (context, state) {
        // Check if phone number input length is greater than 10
        bool isPhoneNumberValid = state.phoneNumberController != null 
          && state.phoneNumberController!.value.text.length > 10;

        return CustomOutlinedButton(
          text: "lbl_continue".tr,
          isDisabled: !isPhoneNumberValid,
          margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v),
          buttonTextStyle: TextStyle(
            color: isPhoneNumberValid ? Color(0xFFFFFFFF) : appTheme.black900.withOpacity(0.25),
          ),
          buttonStyle: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return null; // Use default disabled color
                } else if (isPhoneNumberValid) {
                  return Color(0xFF0362F2);
                } else {
                  return null;
                }
              },
            ),
          ),
          onPressed: isPhoneNumberValid ? () => _continueButtonPressed(context, state) : null,
        );
      },
    );
  }

  void _continueButtonPressed(BuildContext context, PhoneNumberState state) {
    NavigatorService.pushNamed(AppRoutes.otp, arguments: state.phoneNumberController!.value);
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}