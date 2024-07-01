import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/splash/models/onboarding_screen_four_model.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// A bloc that manages the state of a OnboardingScreenFour according to the event that is dispatched to it.
class SplashBloc
    extends Bloc<SplashEvent, SplashState> {
  SplashBloc(SplashState initialState)
      : super(initialState) {
    on<OnboardingScreenFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingScreenFourInitialEvent event,
    Emitter<SplashState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.onboardingScreenNineScreen,
      );
    });
  }
}