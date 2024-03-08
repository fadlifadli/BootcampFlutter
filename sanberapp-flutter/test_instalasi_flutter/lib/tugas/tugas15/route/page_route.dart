import '../page/page1.dart';
import '../page/page2.dart';
import '../page/page3.dart';
import '../route/route_name.dart';
import 'package:get/get.dart';

class pageRouteApp{
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => PageOne(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => PageTwo(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => PageThree(),
    ),

  ];
}