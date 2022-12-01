// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pcassa/models/cashentryexit_model/cashentryexit_model.dart';
import 'package:pcassa/models/cass_model/cass_model.dart';
import 'package:pcassa/models/langauge_model/language_model.dart';
import 'package:pcassa/models/sales_model/sales_model.dart';
import 'package:pcassa/models/savedorder_model/savedorder_model.dart';
import 'package:pcassa/models/stoplist_model/stoplistmodel.dart';
import 'package:pcassa/models/user/user_model.dart';
import '../../constants/app_settings.dart';
import '../../constants/requests.dart';
import '../../models/category_model/category_model.dart';
import '../../models/currency_model/currency_model.dart';
import '../../models/discount_model/discount_model.dart';
import '../../models/info_model/info_model.dart';
import '../../models/menu_model/menu_model.dart';
import '../../models/order_model/order_model.dart';
import '../../models/payment_model/payment_model.dart';
import '../../models/product_model/product_model.dart';
import '../../models/table_group/table_group_model.dart';
import '../dio_options.dart';

class ServicesRepository {
  static Future<List<CategoryModel>> getServices() async {
    final res = await dio.get(
      Requests.getMenu,
      options: Options(
        headers: {
          'language': AppSettings.languageCode,
          'api_key': '',
          'sid': AppSettings.sid,
        },
      ),
    );
    return res.data.map<CategoryModel>(CategoryModel.fromJson).toList();
  }

  static Future<InfoModel> getInfo() async {
    final res = await dio.get(
      Requests.getInfo,
    );
    return InfoModel.fromJson(res.data);
  }
  static Future<ProductModel?> barcodeSearch(
      {required String barCode}) async {
        var main_product;

        main_product = await dio
        .post(Requests.searchbarcode,data: {'barcode': barCode});
        main_product = ProductModel.fromJson(main_product.data);
        return main_product;
        
  }
  static Future<UserModel> changeLanguage(
      {required  LanguageModel model}) async {
        final main_product = await dio
        .post(Requests.changedlanguage ,data: model.toJson());
        return UserModel.fromJson(main_product.data);
  }

  static Future<List<TableGroupModel>> getTables() async {
    final res = await dio.get(
      Requests.table,
    );
    return res.data
        // ignore:unnecessary_lambdas
        .map<TableGroupModel>((json) => TableGroupModel.fromJson(json))
        .toList();
  }

  static Future<MenuModel> getMenu() async {
    final res = await dio.get(
      Requests.menu,
    );
    return MenuModel.fromJson(res.data);
  }

  static Future<List<DiscountModel>> getDiscount() async {
    final res = await dio.get(
      Requests.discount,
    );

    return res.data
        // ignore:unnecessary_lambdas
        .map<DiscountModel>((json) => DiscountModel.fromJson(json))
        .toList();
  }

  static Future<List<CurrencyModel>> getCurrencies() async {
    final res = await dio.get(
      Requests.valyuta,
    );
    return res.data
        // ignore:unnecessary_lambdas
        .map<CurrencyModel>((json) => CurrencyModel.fromJson(json))
        .toList();
  }
  static Future getViruchka() async {
    final res = await dio.get(
      Requests.viruchka,
    );
    return res.data;
  }
  static Future<List<SalesModel>> getSalesProduct() async {
    final res = await dio.get(
      Requests.saleproducts,
    );
    return [res.data]
        // ignore:unnecessary_lambdas
        .map <SalesModel>((json) => SalesModel.fromJson(json))
        .toList();
  }
  static Future<List<StopListModel>> getStopModel() async {
    final res = await dio.get(
      Requests.stoplist,
    );
    return res.data
        // ignore:unnecessary_lambdas
        .map<StopListModel>((json) => StopListModel.fromJson(json));
  }
   static Future<List<CassModel>> getViruchkaModel() async {
    final res = await dio.get(
      Requests.cash,
    );
    return [res.data]
        // ignore:unnecessary_lambdas
        .map<CassModel>((json) => CassModel.fromJson(json)).toList();
  }
  //  static Future<List<StopListModel>> getStopModel() async {
  //   final res = await dio.get(
  //     Requests.stoplist,
  //   );
  //   return res.data
  //       // ignore:unnecessary_lambdas
  //       .map<StopListModel>((json) => StopListModel.fromJson(json))
  //       .toList();
  // }
  static Future<List<StopListModel>> delStopModel({required kod_tov}) async {
    final res = await dio.delete(
      Requests.stoplist,
      data:{"kod_tov":kod_tov}
    );
    return res.data
        // ignore:unnecessary_lambdas
        .map<StopListModel>((json) => StopListModel.fromJson(json))
        .toList();
  }
  static Future addStopModel({
        required StopListModel model,
  }) async {
    final res = await dio.post(
      Requests.stoplist,
      data: model.toJson()
    );
    return res.data
        // ignore:unnecessary_lambdas
        .map<StopListModel>((json) => StopListModel.fromJson(json))
        .toList();
  }
  static Future addIncasation({
        required CashentryexitModel model,
  }) async {
    final res = await dio.post(
      Requests.cashentryexit ,
      data: model.toJson()
    );
    // return res.data
    //     // ignore:unnecessary_lambdas
    //     .map<StopListModel>((json) => StopListModel.fromJson(json))
    //     .toList();
  }
  static Future<Map> closeSmena({
        required String smenaId
  }) async {
    final res = await dio.post(
      Requests.closesmena ,
      data: {"n_smena":smenaId.toString()}
    );
    return res.data;
  }
  static Future<OrderModel> savedorder({
    required OrderModel order,
  }) async {
    final res = await dio.post(Requests.savedorders, data: order);
    return OrderModel.fromJson(res.data);
  }

  static Future<OrderModel> openSaved({
    /*GET ORDER INFO WITH BASKET*/
    required String orderid,
  }) async {
    final res = await dio.post(
      Requests.orderitems,
      data: {
        'orderid': orderid,
      },
    );

    return OrderModel.fromJson(res.data);
  }
  static Future<OrderModel> openCloseSaved({
    /*GET ORDER INFO WITH BASKET*/
    required String orderid,
  }) async {
    final res = await dio.post(
      Requests.ordersedit,
      data: {
        'orderid': orderid,
      },
    );

    return OrderModel.fromJson(res.data);
  }


  static Future<OrderModel> orderInfo({
    required OrderModel order,
  }) async {
    final res = await dio.post(
      Requests.openorder,
      data: order.toJson(),
    );
    //print(2);
    return OrderModel.fromJson(res.data);
  }
  static Future<List<ProductModel>> searchOnName({
    required String name,
  }) async {
    final res = await dio.get(
      Requests.searchname+name,
    );
    //print(2);
    if(!res.data.isEmpty){
      return res.data
        .map<ProductModel>((json) =>ProductModel.fromJson(json))
        .toList();
    }
    return [];
    
  }

  static Future<List<SavedOrderModel>> getSaved(
    /*GET ORDER WITH SALERY WITHOUT BASKET*/
      {required String waiter_name}) async {
    final res = await dio.post(
      Requests.orders,
      data: {
        'waiter_name': waiter_name,
      },
    );
    return res.data
        .map<SavedOrderModel>((json) => SavedOrderModel.fromJson(json))
        .toList();
  }
  static Future<List<SavedOrderModel>> getCloseSaved(
    /*GET ORDER WITH SALERY WITHOUT BASKET*/
      {required String waiter_name}) async {
    final res = await dio.post(
      Requests.ordersclose,
      data: {
        'waiter_name': waiter_name,
      },
    );
    return res.data
        .map<SavedOrderModel>((json) => SavedOrderModel.fromJson(json))
        .toList();
  }
  static Future<OrderModel> itemDelete({
    /*DELETE ITEM FROM BASKET AND GET NEW ORDER*/
    required orderId,
    required id
  }) async {
    final res = await dio.delete (
      Requests.itemsDelete,
      data: {
       "orderid":orderId,
       "id":id
      },
    );
    return OrderModel.fromJson(res.data);
  }
  static Future orderDelete({
    /*FUNCTION FOR DELETING LAST ORDER ON CLOSE WINDOW */
    required orderId,
  }) async {
    final res = await dio.delete(
      Requests.orders,
      data: {
       "orderid":orderId,
      },
    );
  }

  static Future<void> paymentOrder({
    /* */
    required PaymentModel paymentOrder,
  }) async {
    await dio.post(
      Requests.paymentorder,
      data: paymentOrder.toJson(),
    );
  }
}
