// ignore_for_file: must_be_immutable

part of 'otp_filled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpFilled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpFilledEvent extends Equatable {}

/// Event that is dispatched when the OtpFilled widget is first created.
class OtpFilledInitialEvent extends OtpFilledEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpFilledEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
