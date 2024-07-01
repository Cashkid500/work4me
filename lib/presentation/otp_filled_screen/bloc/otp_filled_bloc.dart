import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:workforme/presentation/otp_filled_screen/models/otp_filled_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_filled_event.dart';
part 'otp_filled_state.dart';

/// A bloc that manages the state of a OtpFilled according to the event that is dispatched to it.
class OtpFilledBloc extends Bloc<OtpFilledEvent, OtpFilledState>
    with CodeAutoFill {
  OtpFilledBloc(OtpFilledState initialState) : super(initialState) {
    on<OtpFilledInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpFilledState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    OtpFilledInitialEvent event,
    Emitter<OtpFilledState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
