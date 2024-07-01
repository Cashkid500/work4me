import 'bloc/customer_registration_empty_two_bloc.dart';
import 'models/customer_registration_empty_two_model.dart';
import 'package:flutter/material.dart';
import 'package:workforme/core/app_export.dart';
import 'package:workforme/core/utils/validation_functions.dart';
import 'package:workforme/widgets/app_bar/appbar_leading_image.dart';
import 'package:workforme/widgets/app_bar/custom_app_bar.dart';
import 'package:workforme/widgets/custom_checkbox_button.dart';
import 'package:workforme/widgets/custom_outlined_button.dart';
import 'package:workforme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CustomerRegistrationEmptyTwoScreen extends StatelessWidget {
  CustomerRegistrationEmptyTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CustomerRegistrationEmptyTwoBloc>(
        create: (context) => CustomerRegistrationEmptyTwoBloc(
            CustomerRegistrationEmptyTwoState(
                customerRegistrationEmptyTwoModelObj:
                    CustomerRegistrationEmptyTwoModel()))
          ..add(CustomerRegistrationEmptyTwoInitialEvent()),
        child: CustomerRegistrationEmptyTwoScreen());
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
                                    _buildContrast(context),
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
    return BlocSelector<CustomerRegistrationEmptyTwoBloc,
            CustomerRegistrationEmptyTwoState, TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomTextFormField(
              controller: firstNameController,
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
    return BlocSelector<CustomerRegistrationEmptyTwoBloc,
            CustomerRegistrationEmptyTwoState, TextEditingController?>(
        selector: (state) => state.lastNameController,
        builder: (context, lastNameController) {
          return CustomTextFormField(
              controller: lastNameController,
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
    return BlocSelector<CustomerRegistrationEmptyTwoBloc,
            CustomerRegistrationEmptyTwoState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
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
    return BlocBuilder<CustomerRegistrationEmptyTwoBloc,
        CustomerRegistrationEmptyTwoState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordController,
          hintText: "lbl_create_password".tr,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                context.read<CustomerRegistrationEmptyTwoBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 22.v, 12.h, 22.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 60.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v));
    });
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return BlocBuilder<CustomerRegistrationEmptyTwoBloc,
        CustomerRegistrationEmptyTwoState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.confirmPasswordController,
          hintText: "msg_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
              onTap: () {
                context.read<CustomerRegistrationEmptyTwoBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 22.v, 12.h, 22.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 60.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword1,
          contentPadding: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v));
    });
  }

  /// Section Widget
  Widget _buildContrast(BuildContext context) {
    return BlocSelector<CustomerRegistrationEmptyTwoBloc,
            CustomerRegistrationEmptyTwoState, bool?>(
        selector: (state) => state.contrast,
        builder: (context, contrast) {
          return CustomCheckboxButton(
              text: "msg_i_have_read_and".tr,
              isExpandedText: true,
              value: contrast,
              padding: EdgeInsets.fromLTRB(8.h, 7.v, 23.h, 7.v),
              onChange: (value) {
                context
                    .read<CustomerRegistrationEmptyTwoBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 40.v));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
