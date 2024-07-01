// ignore_for_file: must_be_immutable

part of 'onboarding_screen_eleven_bloc.dart';

/// Represents the state of OnboardingScreenEleven in the application.
class OnboardingScreenElevenState extends Equatable {
  OnboardingScreenElevenState({this.onboardingScreenElevenModelObj});

  OnboardingScreenElevenModel? onboardingScreenElevenModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenElevenModelObj,
      ];
  OnboardingScreenElevenState copyWith(
      {OnboardingScreenElevenModel? onboardingScreenElevenModelObj}) {
    return OnboardingScreenElevenState(
      onboardingScreenElevenModelObj:
          onboardingScreenElevenModelObj ?? this.onboardingScreenElevenModelObj,
    );
  }
}
