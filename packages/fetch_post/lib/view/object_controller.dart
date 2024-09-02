import 'package:fetch_post/core/model/object_model.dart';
import 'package:fetch_post/core/services/object_service.dart';
import 'package:get/get.dart';


class PostController extends GetxController {
  final PostApiService _postApiService =   PostApiService();
  var objects = <ObjectModel>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  PostController();

  @override
  void onInit() {
    fetchObjects();
    super.onInit();
  }

  void fetchObjects() async {
    try {
      isLoading(true);
      final fetchedObjects = await _postApiService.fetchObjects();
      objects.assignAll(fetchedObjects);
    } catch (e) {
      errorMessage.value = 'Failed to fetch data: $e';
    } finally {
      isLoading(false);
    }
  }
}
