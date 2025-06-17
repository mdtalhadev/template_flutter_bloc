part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationLoading extends AuthenticationState {}
final class LoggInLoading extends AuthenticationState {}
final class SignUpLoading extends AuthenticationState {}
final class AuthenticationVerification extends AuthenticationState {}

final class AuthenticationSuccess extends AuthenticationState {
  final String message;
  final UserModel me;
  const AuthenticationSuccess(this.message, this.me);
  @override
  List<Object> get props => [message, me];
}

final class AuthenticationFailure extends AuthenticationState {
  final String? error;
  const AuthenticationFailure([this.error]);
  @override
  List<Object?> get props => [error];
}
