import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_flutter_bloc/config/di/locator.dart';
import 'package:template_flutter_bloc/presentations/authentication/data/auth_provider.dart';

import '../data/model/user_model.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthProvider _authProvider;

  AuthenticationBloc()
    : _authProvider = locator.get<AuthProvider>(),
      super(AuthenticationInitial()) {
    on<AuthenticationStarted>(_authenticationStarted);
    on<LoginUser>(_loginUser);
    on<SignupUser>(_signupUser);
  }

  FutureOr<void> _authenticationStarted(
    AuthenticationStarted event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(AuthenticationLoading());
      String? userId = _authProvider.userId;
      if (userId != null) {
        _handleAUth(emit);
      } else {
        /// manual delay to show splash
        await Future.delayed(const Duration(seconds: 2));
        emit(AuthenticationFailure());
      }
    } catch (e) {
      emit(AuthenticationFailure(e.toString()));
    }
  }

  FutureOr<void> _loginUser(
    LoginUser event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(LoggInLoading());
      bool? isLoggIn = await _authProvider.login(event.email, event.password);
      if (isLoggIn == true) {
        await _handleAUth(emit);
      } else {
        emit(AuthenticationFailure("Unable to login"));
      }
    } catch (e) {
      emit(AuthenticationFailure(e.toString()));
    }
  }

  Future<void> _handleAUth(Emitter<AuthenticationState> emit) async {
    bool isVerified = _authProvider.isVerified;
    if (isVerified) {
      UserModel? me = await _authProvider.getMe();
      if (me != null) {
        emit(
          AuthenticationSuccess("Welcome ${me.firstName} ${me.lastName}", me),
        );
      } else {
        emit(AuthenticationFailure());
      }
    } else {
      emit(AuthenticationVerification());
    }
  }

  FutureOr<void> _signupUser(
    SignupUser event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(SignUpLoading());
      bool? isSignup = await _authProvider.signUp(event.user, event.password);
      if (isSignup == true) {
        await _handleAUth(emit);
      } else {
        emit(AuthenticationFailure("Unable to login"));
      }
    } catch (e) {
      emit(AuthenticationFailure(e.toString()));
    }
  }
}
