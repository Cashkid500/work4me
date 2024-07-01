import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/customer_registration_empty_two_screen/models/customer_registration_empty_two_model.dart';
part 'customer_registration_empty_two_event.dart';
part 'customer_registration_empty_two_state.dart';

/// A bloc that manages the state of a CustomerRegistrationEmptyTwo according to the event that is dispatched to it.
class CustomerRegistrationEmptyTwoBloc extends Bloc<
    CustomerRegistrationEmptyTwoEvent, CustomerRegistrationEmptyTwoState> {
  CustomerRegistrationEmptyTwoBloc(
      CustomerRegistrationEmptyTwoState initialState)
      : super(initialState) {
    on<CustomerRegistrationEmptyTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CustomerRegistrationEmptyTwoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CustomerRegistrationEmptyTwoState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CustomerRegistrationEmptyTwoState> emit,
  ) {
    emit(state.copyWith(contrast: event.value));
  }

  _onInitialize(
    CustomerRegistrationEmptyTwoInitialEvent event,
    Emitter<CustomerRegistrationEmptyTwoState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmPasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
        contrast: false));
  }
}
