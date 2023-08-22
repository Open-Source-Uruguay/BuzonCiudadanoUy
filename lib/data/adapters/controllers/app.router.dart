import 'package:auto_route/auto_route.dart';

import '../../../presentation/screens/home.screen.dart';
import '../../../presentation/screens/login.screen.dart';

part 'app.router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
