// ignore_for_file: must_be_immutable

part of 'introduction_bloc.dart';

/// Represents the state of OnboardingScreenNine in the application.
class IntroductionState extends Equatable {
  IntroductionState({this.onboardingScreenNineModelObj});

  IntroductionModel? onboardingScreenNineModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenNineModelObj,
      ];
  IntroductionState copyWith(
      {IntroductionModel? onboardingScreenNineModelObj}) {
    return IntroductionState(
      onboardingScreenNineModelObj:
          onboardingScreenNineModelObj ?? this.onboardingScreenNineModelObj,
    );
  }
}