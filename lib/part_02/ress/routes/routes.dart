import 'package:get/get.dart';
import 'package:getx/part_02/view/page_two.dart';
import 'package:getx/part_02/ress/routes/routes_name.dart';
import 'package:getx/part_02/view/home_page.dart';
import 'package:getx/part_02/view/page_one.dart';
import 'package:getx/part_02/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => SplashScreen(),
            transitionDuration: Duration(microseconds: 200),
            transition: Transition.leftToRight),
        GetPage(name: RoutesName.homePage, page: () => HomePage01()),
        GetPage(name: RoutesName.pageOne, page: () => PageOne(name: '',)),
        GetPage(name: RoutesName.pageTwo, page: () => PageTwo()),
      ];
}
