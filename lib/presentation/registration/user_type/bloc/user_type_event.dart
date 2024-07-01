// ignore_for_file: must_be_immutable

part of 'user_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// UserType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserTypeEvent extends Equatable {}

/// Event that is dispatched when the CustomerType widget is first created.
class UserTypeInitialEvent extends UserTypeEvent {
  @override
  List<Object?> get props => [];
}