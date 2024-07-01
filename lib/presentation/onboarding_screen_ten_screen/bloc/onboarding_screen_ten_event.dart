// ignore_for_file: must_be_immutable

part of 'onboarding_screen_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenTenEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenTen widget is first created.
class OnboardingScreenTenInitialEvent extends OnboardingScreenTenEvent {
  @override
  List<Object?> get props => [];
}
