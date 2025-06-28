part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

final class AuthenticationStarted extends AuthenticationEvent {}

final class LoginUser extends AuthenticationEvent {
  final String email;
  final String password;

  const LoginUser(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
final class SignupUser extends AuthenticationEvent {
  final UserModel user;
  final String password;

  const SignupUser(this.user, this.password);

  @override
  List<Object?> get props => [user, password];
}
