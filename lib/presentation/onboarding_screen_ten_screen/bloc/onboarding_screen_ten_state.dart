// ignore_for_file: must_be_immutable

part of 'onboarding_screen_ten_bloc.dart';

/// Represents the state of OnboardingScreenTen in the application.
class OnboardingScreenTenState extends Equatable {
  OnboardingScreenTenState({this.onboardingScreenTenModelObj});

  OnboardingScreenTenModel? onboardingScreenTenModelObj;

  @override
  List<Object?> get props => [
        onboardingScreenTenModelObj,
      ];
  OnboardingScreenTenState copyWith(
      {OnboardingScreenTenModel? onboardingScreenTenModelObj}) {
    return OnboardingScreenTenState(
      onboardingScreenTenModelObj:
          onboardingScreenTenModelObj ?? this.onboardingScreenTenModelObj,
    );
  }
}
