import 'dart:developer';

import 'package:fetch_post/core/model/object_model.dart';
import 'package:network/api_services.dart';

class PostApiService {
  final ApiService apiService = ApiService();

  PostApiService();

  Future<List<ObjectModel>> fetchObjects() async {
    try {
      final response = await apiService.get('/objects');
      print(response);
      List<ObjectModel> objects = (response.data as List)
          .map((json) => ObjectModel.fromJson(json))
          .toList();
          log(objects.toString(), name: "fetch");
      return objects;
    } catch (e) {
               log(e.toString(), name: "fetch");

      rethrow;
    }
  }
}
