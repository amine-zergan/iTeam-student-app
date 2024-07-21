import 'package:get/get.dart';
import 'package:items_app/core/routes/route_name.dart';
import 'package:items_app/features/onBoarding_page/onboarding_page.dart';

class GetRoutePage {
  GetRoutePage._();
  static List<GetPage<dynamic>>? getPage = [
    GetPage(
      name: RouteNamePage.onBoardPath,
      page: () => const OnboardingPage(),
    ),
  ];
}
