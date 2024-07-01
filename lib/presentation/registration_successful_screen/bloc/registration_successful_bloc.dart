import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/registration_successful_screen/models/registration_successful_model.dart';
part 'registration_successful_event.dart';
part 'registration_successful_state.dart';

/// A bloc that manages the state of a RegistrationSuccessful according to the event that is dispatched to it.
class RegistrationSuccessfulBloc
    extends Bloc<RegistrationSuccessfulEvent, RegistrationSuccessfulState> {
  RegistrationSuccessfulBloc(RegistrationSuccessfulState initialState)
      : super(initialState) {
    on<RegistrationSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrationSuccessfulInitialEvent event,
    Emitter<RegistrationSuccessfulState> emit,
  ) async {}
}
