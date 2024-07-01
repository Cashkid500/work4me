import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/onboarding_screen_ten_screen/models/onboarding_screen_ten_model.dart';
part 'onboarding_screen_ten_event.dart';
part 'onboarding_screen_ten_state.dart';

/// A bloc that manages the state of a OnboardingScreenTen according to the event that is dispatched to it.
class OnboardingScreenTenBloc
    extends Bloc<OnboardingScreenTenEvent, OnboardingScreenTenState> {
  OnboardingScreenTenBloc(OnboardingScreenTenState initialState)
      : super(initialState) {
    on<OnboardingScreenTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenTenInitialEvent event,
    Emitter<OnboardingScreenTenState> emit,
  ) async {}
}
