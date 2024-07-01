// ignore_for_file: must_be_immutable

part of 'customer_registration_empty_two_bloc.dart';

/// Represents the state of CustomerRegistrationEmptyTwo in the application.
class CustomerRegistrationEmptyTwoState extends Equatable {
  CustomerRegistrationEmptyTwoState({
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.passwordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.contrast = false,
    this.customerRegistrationEmptyTwoModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  CustomerRegistrationEmptyTwoModel? customerRegistrationEmptyTwoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool contrast;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        emailController,
        passwordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        contrast,
        customerRegistrationEmptyTwoModelObj,
      ];
  CustomerRegistrationEmptyTwoState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? contrast,
    CustomerRegistrationEmptyTwoModel? customerRegistrationEmptyTwoModelObj,
  }) {
    return CustomerRegistrationEmptyTwoState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      contrast: contrast ?? this.contrast,
      customerRegistrationEmptyTwoModelObj:
          customerRegistrationEmptyTwoModelObj ??
              this.customerRegistrationEmptyTwoModelObj,
    );
  }
}
