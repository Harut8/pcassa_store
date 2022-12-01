import 'package:auto_route/auto_route.dart';
import 'package:pcassa/screens/nested_screen/cash_screen.dart';
import 'package:pcassa/screens/nested_screen/cass_screen.dart';
import 'package:pcassa/screens/nested_screen/dashboard_nested.dart';
import 'package:pcassa/screens/nested_screen/sales_screen.dart';

import 'screens/admin_screen/admin_screen.dart';
import 'screens/dashboard_screen/dashboard_screen.dart';
import 'screens/order_screen/order_screen.dart';
import 'screens/sign_in_screen/sign_in_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/tables_screen/tables_screen.dart';

@CustomAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: [
    CustomRoute<void>(
      page: SplashScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: true,
    ),
    CustomRoute<void>(
      page: SignInScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: NestedDashboard,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: DashboardScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: CashScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: CassScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: SalesScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: AdminScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: TablesScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute<void>(
      page: OrderScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    )
  ],
)
class $Router {}
