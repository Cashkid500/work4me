// ignore_for_file: must_be_immutable

part of 'registration_successful_bloc.dart';

/// Represents the state of RegistrationSuccessful in the application.
class RegistrationSuccessfulState extends Equatable {
  RegistrationSuccessfulState({this.registrationSuccessfulModelObj});

  RegistrationSuccessfulModel? registrationSuccessfulModelObj;

  @override
  List<Object?> get props => [
        registrationSuccessfulModelObj,
      ];
  RegistrationSuccessfulState copyWith(
      {RegistrationSuccessfulModel? registrationSuccessfulModelObj}) {
    return RegistrationSuccessfulState(
      registrationSuccessfulModelObj:
          registrationSuccessfulModelObj ?? this.registrationSuccessfulModelObj,
    );
  }
}
