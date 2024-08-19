import 'package:get/get.dart';
import 'package:items_app/core/routes/route_name.dart';
import 'package:items_app/features/auth/presentation/forget_password/forget_password.dart';
import 'package:items_app/features/auth/presentation/login_page/components/sign_in_page.dart';
import 'package:items_app/features/home/presentation/home_page.dart';
import 'package:items_app/features/onBoard/onboarding_page.dart';

class GetRoutePage {
  GetRoutePage._();
  static List<GetPage<dynamic>>? getPage = [
    GetPage(
      name: RouteNamePage.onBoardPath,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: RouteNamePage.homePath,
      page: () => const HomePageView(),
    ),
    GetPage(
      name: RouteNamePage.loginPath,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: RouteNamePage.forgetPath,
      page: () => const ForgetPasswordPage(),
    ),
  ];
}
