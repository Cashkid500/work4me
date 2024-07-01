import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/otp_error_screen/models/otp_error_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_error_event.dart';
part 'otp_error_state.dart';

/// A bloc that manages the state of a OtpError according to the event that is dispatched to it.
class OtpErrorBloc extends Bloc<OtpErrorEvent, OtpErrorState>
    with CodeAutoFill {
  OtpErrorBloc(OtpErrorState initialState) : super(initialState) {
    on<OtpErrorInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpErrorState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    OtpErrorInitialEvent event,
    Emitter<OtpErrorState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
