// ignore_for_file: must_be_immutable

part of 'splash_bloc.dart';

/// Represents the state of OnboardingScreenFour in the application.
class SplashState extends Equatable {
  SplashState({this.onboardingScreenFourModelObj});

  OnboardingScreenFourModel? onboardingScreenFourModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenFourModelObj,
      ];
  SplashState copyWith(
      {OnboardingScreenFourModel? onboardingScreenFourModelObj}) {
    return SplashState(
      onboardingScreenFourModelObj:
          onboardingScreenFourModelObj ?? this.onboardingScreenFourModelObj,
    );
  }
}
