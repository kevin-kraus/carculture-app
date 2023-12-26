import 'package:app/screens/LoginScreen.dart';
import 'package:app/screens/MainSplashScreen.dart';

class Routes {
  static final routes = {
    '/login': (context) => LoginScreen(),
    '/login/callback/facebook': (context) => LoginScreen(),
  };
}
