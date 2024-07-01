// ignore_for_file: must_be_immutable

part of 'splash_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingScreenFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashEvent extends Equatable {}

/// Event that is dispatched when the OnboardingScreenFour widget is first created.
class OnboardingScreenFourInitialEvent extends SplashEvent {
  @override
  List<Object?> get props => [];
}