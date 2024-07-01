import 'package:country_pickers/country.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:workforme/presentation/registration/phone_number/models/phone_number_model.dart';
import '/core/app_export.dart';
part 'phone_number_event.dart';
part 'phone_number_state.dart';

/// A bloc that manages the state of a CustomerRegistrationEmptyOne according to the event that is dispatched to it.
class PhoneNumberBloc extends Bloc<PhoneNumberEvent, PhoneNumberState> {
  PhoneNumberBloc(PhoneNumberState initialState) : super(initialState) {
    on<PhoneNumberInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<PhoneNumberState> emit,
  ) {
    emit(state.copyWith(selectedCountry: event.value));
  }

  _onInitialize(
    PhoneNumberInitialEvent event,
    Emitter<PhoneNumberState> emit,
  ) async {
    emit(state.copyWith(phoneNumberController: TextEditingController()));
  }
}