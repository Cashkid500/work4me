// ignore_for_file: must_be_immutable

part of 'otp_resend_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpResendCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpResendCodeEvent extends Equatable {}

/// Event that is dispatched when the OtpResendCode widget is first created.
class OtpResendCodeInitialEvent extends OtpResendCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpResendCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
