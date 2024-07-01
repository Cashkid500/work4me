import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/introduction/models/introduction_model.dart';
part 'introduction_event.dart';
part 'introduction_state.dart';

/// A bloc that manages the state of a OnboardingScreenNine according to the event that is dispatched to it.
class IntroductionBloc
    extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc(IntroductionState initialState)
      : super(initialState) {
    on<OnboardingScreenNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenNineInitialEvent event,
    Emitter<IntroductionState> emit,
  ) async {}
}