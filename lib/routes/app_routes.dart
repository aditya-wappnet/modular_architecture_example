import 'package:fetch_post/view/object_screen.dart';
import 'package:fetch_post/view/object_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  // ignore: constant_identifier_names
  static const POST_SCREEN = '/post';

  static List<GetPage> routes = [
    GetPage(
      name: POST_SCREEN,
      page: () => const PostScreen(),
      binding: ObjectBinding()),
  
  ];
}
