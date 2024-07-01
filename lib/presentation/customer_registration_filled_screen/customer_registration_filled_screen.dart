import 'bloc/customer_registration_filled_bloc.dart';
import 'models/customer_registration_filled_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/core/utils/validation_functions.dart';
import 'package:workforme/widgets/app_bar/appbar_leading_image.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';
import 'package:workforme/widgets/custom_checkbox_button.dart';
import 'package:workforme/widgets/custom_elevated_button.dart';
import 'package:workforme/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class CustomerRegistrationFilledScreen extends StatelessWidget {
  CustomerRegistrationFilledScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CustomerRegistrationFilledBloc>(
        create: (context) => CustomerRegistrationFilledBloc(
            CustomerRegistrationFilledState(
                customerRegistrationFilledModelObj:
                    CustomerRegistrationFilledModel()))
          ..add(CustomerRegistrationFilledInitialEvent()),
        child: CustomerRegistrationFilledScreen());
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
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildAppBar(context),
                                            SizedBox(height: 10.v),
                                            Text("msg_customer_registration".tr,
                                                style: theme
                                                    .textTheme.headlineSmall),
                                            SizedBox(height: 7.v),
                                            Text("msg_enter_your_details2".tr,
                                                style:
                                                    theme.textTheme.bodyMedium)
                                          ]))),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 36.v),
                                  child: Column(children: [
                                    _buildFirstName(context),
                                    SizedBox(height: 20.v),
                                    _buildLastName(context),
                                    SizedBox(height: 20.v),
                                    _buildEmail(context),
                                    SizedBox(height: 20.v),
                                    _buildPassword(context),
                                    SizedBox(height: 20.v),
                                    _buildConfirmPassword(context),
                                    SizedBox(height: 20.v),
                                    _buildIHaveReadAndAgreedTo(context),
                                    SizedBox(height: 5.v)
                                  ]))
                            ]))))),
            bottomNavigationBar: _buildRegister(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(24.h, 4.v, 335.h, 4.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<CustomerRegistrationFilledBloc,
            CustomerRegistrationFilledState, TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomFloatingTextField(
              controller: firstNameController,
              labelText: "lbl_first_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return BlocSelector<CustomerRegistrationFilledBloc,
            CustomerRegistrationFilledState, TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomFloatingTextField(
              controller: lastNameController,
              labelText: "lbl_last_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_last_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<CustomerRegistrationFilledBloc,
            CustomerRegistrationFilledState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomFloatingTextField(
              controller: emailController,
              labelText: "lbl_email".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<CustomerRegistrationFilledBloc,
        CustomerRegistrationFilledState>(builder: (context, state) {
      return CustomFloatingTextField(
          controller: state.passwordController,
          labelText: "lbl_create_password".tr,
          labelStyle: CustomTextStyles.bodyMediumGray600,
          hintText: "lbl_create_password".tr,
          textInputType: TextInputType.visiblePassword,
          obscureText: state.isShowPassword,
          suffix: InkWell(
              onTap: () {
                context.read<CustomerRegistrationFilledBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 58.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.fromLTRB(12.h, 25.v, 12.h, 12.v));
    });
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return BlocBuilder<CustomerRegistrationFilledBloc,
        CustomerRegistrationFilledState>(builder: (context, state) {
      return CustomFloatingTextField(
          controller: state.confirmPasswordController,
          labelText: "msg_confirm_password".tr,
          labelStyle: CustomTextStyles.bodyMediumGray600,
          hintText: "msg_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: state.isShowPassword1,
          suffix: InkWell(
              onTap: () {
                context.read<CustomerRegistrationFilledBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 58.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.fromLTRB(12.h, 25.v, 12.h, 12.v));
    });
  }

  /// Section Widget
  Widget _buildIHaveReadAndAgreedTo(BuildContext context) {
    return BlocSelector<CustomerRegistrationFilledBloc,
            CustomerRegistrationFilledState, bool?>(
        selector: (state) => state.iHaveReadAndAgreedTo,
        builder: (context, iHaveReadAndAgreedTo) {
          return CustomCheckboxButton(
              text: "msg_i_have_read_and".tr,
              isExpandedText: true,
              value: iHaveReadAndAgreedTo,
              padding: EdgeInsets.fromLTRB(8.h, 7.v, 23.h, 7.v),
              onChange: (value) {
                context
                    .read<CustomerRegistrationFilledBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary);
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
