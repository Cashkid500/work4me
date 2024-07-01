// ignore_for_file: must_be_immutable

part of 'onboarding_screen_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingScreenElevenEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenEleven widget is first created.
class OnboardingScreenElevenInitialEvent extends OnboardingScreenElevenEvent {
  @override
  List<Object?> get props => [];
}
