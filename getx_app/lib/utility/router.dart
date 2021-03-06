import 'package:get/get.dart';
import 'package:getx_app/view/login_view.dart';
import 'package:getx_app/view/home_view.dart';

class Routers {
  static final route = [
    GetPage(
        name: "/loginView",
        page: () => LoginView(),
        transition: Transition.cupertino),
    GetPage(
        name: "/homeView",
        page: () => HomeView(),
        transition: Transition.cupertino),
  ];
}
