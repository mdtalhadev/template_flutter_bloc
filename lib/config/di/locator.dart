import 'package:get_it/get_it.dart';
import 'package:template_flutter_bloc/presentations/authentication/data/auth_provider.dart';



final GetIt locator = GetIt.instance;

void initServices() {

  /// locator.registerSingleton<AuthenticationProvider>(AuthenticationProvider());
  locator.registerSingleton<AuthProvider>(AuthProvider());



}
