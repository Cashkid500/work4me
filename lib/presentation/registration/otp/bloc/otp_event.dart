// ignore_for_file: must_be_immutable

part of 'otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpEmpty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpEvent extends Equatable {}

/// Event that is dispatched when the OtpEmpty widget is first created.
class OtpInitialEvent extends OtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
