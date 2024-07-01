// ignore_for_file: must_be_immutable

part of 'customer_registration_empty_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomerRegistrationEmptyTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CustomerRegistrationEmptyTwoEvent extends Equatable {}

/// Event that is dispatched when the CustomerRegistrationEmptyTwo widget is first created.
class CustomerRegistrationEmptyTwoInitialEvent
    extends CustomerRegistrationEmptyTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CustomerRegistrationEmptyTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CustomerRegistrationEmptyTwoEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CustomerRegistrationEmptyTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
