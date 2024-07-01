// ignore_for_file: must_be_immutable

part of 'registration_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegistrationSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistrationSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the RegistrationSuccessful widget is first created.
class RegistrationSuccessfulInitialEvent extends RegistrationSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
