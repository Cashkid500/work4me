import 'bloc/otp_empty_bloc.dart';
import 'models/otp_empty_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/widgets/app_bar/appbar_leading_image.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';
import 'package:workforme/widgets/custom_pin_code_text_field.dart';

class OtpEmptyScreen extends StatelessWidget {
  const OtpEmptyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpEmptyBloc>(
        create: (context) =>
            OtpEmptyBloc(OtpEmptyState(otpEmptyModelObj: OtpEmptyModel()))
              ..add(OtpEmptyInitialEvent()),
        child: OtpEmptyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildHeaderAndDescription(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 37.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 2.h, right: 1.h),
                                child: BlocSelector<OtpEmptyBloc, OtpEmptyState,
                                        TextEditingController?>(
                                    selector: (state) => state.otpController,
                                    builder: (context, otpController) {
                                      return CustomPinCodeTextField(
                                          context: context,
                                          controller: otpController,
                                          onChanged: (value) {
                                            otpController?.text = value;
                                          });
                                    })),
                            SizedBox(height: 18.v),
                            Text("msg_resend_code_in_00_30".tr,
                                style: CustomTextStyles.bodyMediumBlack900),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildHeaderAndDescription(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgVector,
                  margin: EdgeInsets.fromLTRB(24.h, 4.v, 335.h, 4.v),
                  onTap: () {
                    onTapVector(context);
                  })),
          SizedBox(height: 7.v),
          Text("msg_otp_verification".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 8.v),
          Text("msg_please_enter_the".tr, style: theme.textTheme.bodyMedium)
        ]));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
