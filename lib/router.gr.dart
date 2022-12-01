// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import 'constants/order_page_types.dart' as _i13;
import 'models/basket_item_model/basket_item_model.dart' as _i16;
import 'models/order_model/order_model.dart' as _i15;
import 'models/savedorder_model/savedorder_model.dart' as _i14;
import 'screens/admin_screen/admin_screen.dart' as _i8;
import 'screens/dashboard_screen/dashboard_screen.dart' as _i4;
import 'screens/nested_screen/cash_screen.dart' as _i5;
import 'screens/nested_screen/cass_screen.dart' as _i6;
import 'screens/nested_screen/dashboard_nested.dart' as _i3;
import 'screens/nested_screen/sales_screen.dart' as _i7;
import 'screens/order_screen/order_screen.dart' as _i10;
import 'screens/sign_in_screen/sign_in_screen.dart' as _i2;
import 'screens/splash_screen.dart' as _i1;
import 'screens/tables_screen/tables_screen.dart' as _i9;

class Router extends _i11.RootStackRouter {
  Router([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: _i1.SplashScreen(key: args.key),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: _i2.SignInScreen(key: args.key),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NestedDashboard.name: (routeData) {
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: const _i3.NestedDashboard(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardRoute.name: (routeData) {
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: const _i4.DashboardScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CashRoute.name: (routeData) {
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: const _i5.CashScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CassRoute.name: (routeData) {
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: const _i6.CassScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SalesRoute.name: (routeData) {
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: const _i7.SalesScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AdminRoute.name: (routeData) {
      final args = routeData.argsAs<AdminRouteArgs>(
          orElse: () => const AdminRouteArgs());
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: _i8.AdminScreen(key: args.key),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TablesRoute.name: (routeData) {
      final args = routeData.argsAs<TablesRouteArgs>();
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: _i9.TablesScreen(
          key: args.key,
          orderPageType: args.orderPageType,
          editedOrders: args.editedOrders,
        ),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i11.CustomPage<void>(
        routeData: routeData,
        child: _i10.OrderScreen(
          key: args.key,
          order: args.order,
          orderPageType: args.orderPageType,
          basket: args.basket,
        ),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-screen',
        ),
        _i11.RouteConfig(
          NestedDashboard.name,
          path: '/nested-dashboard',
        ),
        _i11.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-screen',
        ),
        _i11.RouteConfig(
          CashRoute.name,
          path: '/cash-screen',
        ),
        _i11.RouteConfig(
          CassRoute.name,
          path: '/cass-screen',
        ),
        _i11.RouteConfig(
          SalesRoute.name,
          path: '/sales-screen',
        ),
        _i11.RouteConfig(
          AdminRoute.name,
          path: '/admin-screen',
        ),
        _i11.RouteConfig(
          TablesRoute.name,
          path: '/tables-screen',
        ),
        _i11.RouteConfig(
          OrderRoute.name,
          path: '/order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i12.Key? key})
      : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(key: key),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignInScreen]
class SignInRoute extends _i11.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i12.Key? key})
      : super(
          SignInRoute.name,
          path: '/sign-in-screen',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.NestedDashboard]
class NestedDashboard extends _i11.PageRouteInfo<void> {
  const NestedDashboard()
      : super(
          NestedDashboard.name,
          path: '/nested-dashboard',
        );

  static const String name = 'NestedDashboard';
}

/// generated route for
/// [_i4.DashboardScreen]
class DashboardRoute extends _i11.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/dashboard-screen',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.CashScreen]
class CashRoute extends _i11.PageRouteInfo<void> {
  const CashRoute()
      : super(
          CashRoute.name,
          path: '/cash-screen',
        );

  static const String name = 'CashRoute';
}

/// generated route for
/// [_i6.CassScreen]
class CassRoute extends _i11.PageRouteInfo<void> {
  const CassRoute()
      : super(
          CassRoute.name,
          path: '/cass-screen',
        );

  static const String name = 'CassRoute';
}

/// generated route for
/// [_i7.SalesScreen]
class SalesRoute extends _i11.PageRouteInfo<void> {
  const SalesRoute()
      : super(
          SalesRoute.name,
          path: '/sales-screen',
        );

  static const String name = 'SalesRoute';
}

/// generated route for
/// [_i8.AdminScreen]
class AdminRoute extends _i11.PageRouteInfo<AdminRouteArgs> {
  AdminRoute({_i12.Key? key})
      : super(
          AdminRoute.name,
          path: '/admin-screen',
          args: AdminRouteArgs(key: key),
        );

  static const String name = 'AdminRoute';
}

class AdminRouteArgs {
  const AdminRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'AdminRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.TablesScreen]
class TablesRoute extends _i11.PageRouteInfo<TablesRouteArgs> {
  TablesRoute({
    _i12.Key? key,
    required _i13.OrderPageType orderPageType,
    required List<_i14.SavedOrderModel> editedOrders,
  }) : super(
          TablesRoute.name,
          path: '/tables-screen',
          args: TablesRouteArgs(
            key: key,
            orderPageType: orderPageType,
            editedOrders: editedOrders,
          ),
        );

  static const String name = 'TablesRoute';
}

class TablesRouteArgs {
  const TablesRouteArgs({
    this.key,
    required this.orderPageType,
    required this.editedOrders,
  });

  final _i12.Key? key;

  final _i13.OrderPageType orderPageType;

  final List<_i14.SavedOrderModel> editedOrders;

  @override
  String toString() {
    return 'TablesRouteArgs{key: $key, orderPageType: $orderPageType, editedOrders: $editedOrders}';
  }
}

/// generated route for
/// [_i10.OrderScreen]
class OrderRoute extends _i11.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i12.Key? key,
    required _i15.OrderModel order,
    required _i13.OrderPageType orderPageType,
    required List<_i16.BasketItemModel> basket,
  }) : super(
          OrderRoute.name,
          path: '/order-screen',
          args: OrderRouteArgs(
            key: key,
            order: order,
            orderPageType: orderPageType,
            basket: basket,
          ),
        );

  static const String name = 'OrderRoute';
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    required this.order,
    required this.orderPageType,
    required this.basket,
  });

  final _i12.Key? key;

  final _i15.OrderModel order;

  final _i13.OrderPageType orderPageType;

  final List<_i16.BasketItemModel> basket;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order, orderPageType: $orderPageType, basket: $basket}';
  }
}
