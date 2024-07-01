// ignore_for_file: must_be_immutable

part of 'phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomerRegistrationEmptyOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the CustomerRegistrationEmptyOne widget is first created.
class PhoneNumberInitialEvent
    extends PhoneNumberEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends PhoneNumberEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

/* @immutable
abstract class PhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the CustomerRegistrationEmpty widget is first created.
class PhoneNumberInitialEvent
    extends PhoneNumberEvent {
  @override
  List<Object?> get props => [];
}
 */