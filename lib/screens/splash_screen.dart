import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'dart:async';
import '../http/repositories/services_repository.dart';
import '../router.gr.dart';
import '../services.dart';
import '../store/auth/auth_state.dart';
import '../store/language/language_state.dart';
import '../store/loading/loading_state.dart';
import '../utils/error_handler.dart';
import '../widgets/loading_widget.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final loadingState = LoadingState();
  final languageState = LanguageState();
  final authState = GetIt.I<AuthState>();

  @override
  void initState() {
    //print("mtav");
    super.initState();
    
    loadingState.startLoading();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => afterFirstLayout(context),
    );
  }

  Future<void> afterFirstLayout(BuildContext context) async {
    try {
      
      final result = await ServicesRepository.getInfo();
      authState.info = result;
      await Future.delayed(const Duration(seconds: 1));
      await router.pushAndPopUntil(
        SignInRoute(),
        predicate: (_) => false,
      );
    } on DioError{
      await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.any',
      );
    } finally {
      loadingState.stopLoading();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: LoadingWidget(),
    );
  }
}
