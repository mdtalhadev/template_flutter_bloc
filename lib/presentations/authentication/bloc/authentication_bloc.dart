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
  }

  FutureOr<void> _authenticationStarted(AuthenticationStarted event,
      Emitter<AuthenticationState> emit,) {
    emit(AuthenticationLoading());

  }
}