import 'package:go_router/go_router.dart';

import '../login_screen.dart';
import '../screens/btc_screen.dart';
import '../screens/home_screen.dart';
import '../screens/markets_screen.dart';
import '../screens/search_scren.dart';
import '../screens/splash_screen.dart';

final routes = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const splashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/market',
      builder: (context, state) => const MarketScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const loginScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/btc',
      builder: (context, state) => const BtcScreen(),
    ),
  ]
);