import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/customer_registration_filled_screen/models/customer_registration_filled_model.dart';
part 'customer_registration_filled_event.dart';
part 'customer_registration_filled_state.dart';

/// A bloc that manages the state of a CustomerRegistrationFilled according to the event that is dispatched to it.
class CustomerRegistrationFilledBloc extends Bloc<
    CustomerRegistrationFilledEvent, CustomerRegistrationFilledState> {
  CustomerRegistrationFilledBloc(CustomerRegistrationFilledState initialState)
      : super(initialState) {
    on<CustomerRegistrationFilledInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CustomerRegistrationFilledState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CustomerRegistrationFilledState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CustomerRegistrationFilledState> emit,
  ) {
    emit(state.copyWith(iHaveReadAndAgreedTo: event.value));
  }

  _onInitialize(
    CustomerRegistrationFilledInitialEvent event,
    Emitter<CustomerRegistrationFilledState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmPasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
        iHaveReadAndAgreedTo: false));
  }
}
