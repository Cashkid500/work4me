import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/onboarding_screen_eleven_screen/models/onboarding_screen_eleven_model.dart';
part 'onboarding_screen_eleven_event.dart';
part 'onboarding_screen_eleven_state.dart';

/// A bloc that manages the state of a OnboardingScreenEleven according to the event that is dispatched to it.
class OnboardingScreenElevenBloc
    extends Bloc<OnboardingScreenElevenEvent, OnboardingScreenElevenState> {
  OnboardingScreenElevenBloc(OnboardingScreenElevenState initialState)
      : super(initialState) {
    on<OnboardingScreenElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenElevenInitialEvent event,
    Emitter<OnboardingScreenElevenState> emit,
  ) async {}
}
