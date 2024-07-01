// ignore_for_file: must_be_immutable

part of 'customer_registration_filled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomerRegistrationFilled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CustomerRegistrationFilledEvent extends Equatable {}

/// Event that is dispatched when the CustomerRegistrationFilled widget is first created.
class CustomerRegistrationFilledInitialEvent
    extends CustomerRegistrationFilledEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CustomerRegistrationFilledEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CustomerRegistrationFilledEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CustomerRegistrationFilledEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
