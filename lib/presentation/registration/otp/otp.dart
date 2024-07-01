import 'package:workforme/core/app_export.dart';
import 'package:workforme/data/apiClient/api_client.dart';
import 'package:workforme/presentation/registration/otp/models/phoneDto.dart';
import 'package:workforme/widgets/app_bar/appbar_leading_image.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';
import 'package:workforme/widgets/custom_pin_code_text_field.dart';

import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
        create: (context) =>
            OtpBloc(OtpState(otpModelObj: OtpModel()))
              ..add(OtpInitialEvent()),
        child: Otp());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              _buildHeaderAndDescription(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 37.v),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 1.h),
                      child: BlocSelector<OtpBloc, OtpState,
                              TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                              context: context,
                              controller: otpController,
                              onChanged: (value) {
                                if (value.length == 4) {
                                  // Notify parent screen when code length is 4
                                  onTapVector(context, value);
                                }
                              },
                            );
                          }),
                    ),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_resend_code_in_00_30".tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                    ),
                    //SizedBox(height: 73.v),
                    //CircularProgressIndicator(), // Show loading spinner
                    //SizedBox(height: 18.v),
                    //Text("lbl_please_wait".tr,style: CustomTextStyles.bodyMediumBlueA200),
                    //SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderAndDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leadingWidth: double.maxFinite,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.fromLTRB(24.h, 4.v, 335.h, 4.v),
              onTap: () {
                NavigatorService.goBack();
              },
            ),
          ),
          SizedBox(height: 7.v),
          Text("msg_otp_verification".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 8.v),
          Text("msg_please_enter_the".tr, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }

  /// Send request to validate code
  void onTapVector(BuildContext context, String code) async {
    final dto = CodeValidationDto(
      phoneNumber: '1234567890',
      code: code,
    );

    // Show loading spinner while sending request
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      barrierDismissible: false, // Prevent user from dismissing dialog
    );

    // Call backend service to validate code
    final response = await ApiClient.validateCode(dto);

    // Close loading spinner
    Navigator.of(context).pop();

    if (response.statusCode == 200) {
      // Code is valid, handle success
      print('Code validated successfully');
      //NavigatorService.goToNextScreen();
    } else {
      // Code validation failed, handle error
      print('Code validation failed: ${response.body}');
    }
  }
}
