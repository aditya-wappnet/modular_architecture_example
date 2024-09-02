import 'package:fetch_post/view/object_controller.dart';
import 'package:get/get.dart';


class ObjectBinding extends Bindings {
  @override
  void dependencies() {
    // Register the PostController with GetX
    Get.lazyPut<PostController>(
        () => PostController());
  }
}
