

import 'package:get/get.dart';
import 'package:lojinha/src/constants/storage_keys.dart';
import 'package:lojinha/src/models/user_model.dart';
import 'package:lojinha/src/pages/auth/result/auth_result.dart';
import 'package:lojinha/src/pages/auth/view/repository/auth_repository.dart';
import 'package:lojinha/src/pages_routes/app_pages.dart';
import 'package:lojinha/src/services/utils_services.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();
  final utilsServices = UtilsServices();

  UserModel user = UserModel();

  @override 
  void onInit(){
    super.onInit();

    validateToken();
  }
// add

  Future<void> validateToken() async {
    // Recuperar o token que foi salvo localmente
    String? token = await utilsServices.getLocalData(key: StorageKeys.token);

    if (token == null) {
      Get.offAllNamed(PagesRoutes.signInRoute);
      return;
    }

    AuthResult result = await authRepository.validateToken(token);

    result.when(
      success: (user) {
        this.user = user;
 
        saveTokenandProceedToBase();
      },
      error: (message) {
        signOut();
      },
    );
    // authRepository.validateToken(token);
  }

  Future<void> signOut() async {
   // Zerar o user
   user = UserModel();

   // Remover o token localmente
   await utilsServices.removeLocalData(key: StorageKeys.token);

   // Ir para o login
   Get.offAllNamed(PagesRoutes.signInRoute);
  }

  void saveTokenandProceedToBase() {
    // Salvar o token
    utilsServices.saveLocalData(key: StorageKeys.token, data: user.token!);

    // Ir para a base
    Get.offAllNamed(PagesRoutes.baseRoute);
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;

    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;

    result.when(
      success: (user) {
        this.user = user;
      },
      error: (message) {
        print(message);

        utilsServices.showToast(
          message: message,
          isError: true,
        );
      },
    );
  }
}
