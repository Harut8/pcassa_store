
import 'package:easy_localization/easy_localization.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pcassa/themes/app_colors.dart';

import '../../router.gr.dart';
import '../../services.dart';
import '../../store/auth/auth_state.dart';
import '../../store/loading/loading_state.dart';
import '../../store/sign_in_state/sign_in_state.dart';
import '../../utils/error_handler.dart';
import '../../widgets/footer_content.dart';
import '../../widgets/header_content.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/pin_code_keyboard.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final loadingState = LoadingState();
  final signInState = SignInState();
  final controller = TextEditingController();
  final focusNode = FocusNode();
  var colorState = GetIt.I<AppColorobs>();
  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    EasyLocalization.of(context)!.setLocale(HeaderContent.langeList[HeaderContent.defaultLangNum as int]);
    //print("mtav");
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: focusNode.requestFocus,
      child: Stack(
        children: [
          Material(
            child: Column(
              children: [
                HeaderContent(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex:size.width<1050?1: 2,
                        child: Observer(
                          builder:(context) =>  Padding(
                              padding: EdgeInsets.all(32),
                              child:colorState.isDark ==false? Image(
                                  image: AssetImage('assets/images/logo.png')):
                                  Image(
                                  image: AssetImage('assets/images/log.png'))
                              // child: ExtendedImage.network(
                              //   GetIt.I<AuthState>().info!.logo,
                              // ),
                              ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(48),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: Observer(
                                  builder:(context) =>  TextFormField(
                                    style: TextStyle(
                                        color:AppColors.appBlack,
                                        fontWeight: FontWeight.normal),
                                    onEditingComplete: onSignIn,
                                    focusNode: focusNode,
                                    controller: controller,
                                    obscureText: true,
                                    autofocus: false,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintText: 'pinCodeLabel'.tr(),
                                      hintStyle: TextStyle(color:AppColors.appDarkGray,fontSize: 12),
                                      fillColor: Colors.transparent
                                    ),
                                  ),
                                ),
                              ),
                              Observer(
                                builder:(context) =>  Flexible(
                                  child: PinCodeKeyboard(
                                    childAspectRatio: size.width<950?3/2: 8 / 5,
                                    onTap: onTap
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FooterContent(),
              ],
            ),
          ),
          Observer(
            builder: (_) => loadingState.isLoading
                ? const LoadingWidget()
                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  onTap(String value) {
    focusNode.requestFocus();
    switch (value) {
      case 'Clear':
        controller.clear();
        break;
      case 'done':
        onSignIn();
        break;
      default:
        {
          controller.text = controller.text + value;
          signInState.code = controller.text.trim();
        }
    }
  }

  Future<void> onSignIn() async {
    try {
      loadingState.startLoading();
      signInState.code = controller.text.trim();

      await signInState.signIn();
      //print(object)
      //print(authState.dostupMap);
      await router.pushAndPopUntil(
        const DashboardRoute(),
        predicate: (_) => false,
      );
    } catch (e) {
      await UiUtils.errorModal(
        context: context,
        errorCode: 'errors.wrongCode',
      );
      controller.clear();
      signInState.code = '';
    } finally {
      loadingState.stopLoading();
    }
  }
}
