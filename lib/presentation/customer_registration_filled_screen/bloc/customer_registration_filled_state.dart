// ignore_for_file: must_be_immutable

part of 'customer_registration_filled_bloc.dart';

/// Represents the state of CustomerRegistrationFilled in the application.
class CustomerRegistrationFilledState extends Equatable {
  CustomerRegistrationFilledState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.passwordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.iHaveReadAndAgreedTo = false,
    this.customerRegistrationFilledModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  CustomerRegistrationFilledModel? customerRegistrationFilledModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool iHaveReadAndAgreedTo;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        passwordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        iHaveReadAndAgreedTo,
        customerRegistrationFilledModelObj,
      ];
  CustomerRegistrationFilledState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? iHaveReadAndAgreedTo,
    CustomerRegistrationFilledModel? customerRegistrationFilledModelObj,
  }) {
    return CustomerRegistrationFilledState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      iHaveReadAndAgreedTo: iHaveReadAndAgreedTo ?? this.iHaveReadAndAgreedTo,
      customerRegistrationFilledModelObj: customerRegistrationFilledModelObj ??
          this.customerRegistrationFilledModelObj,
    );
  }
}
