import 'package:dio/dio.dart';
import 'package:network/dio_client.dart';

class ApiService {
  final DioClient dioClient = DioClient();

  ApiService();

  Future<Response> get(String endpoint) async {
    return await dioClient.client.get(endpoint);
  }

  Future<Response> post(String endpoint, {dynamic data}) async {
    return await dioClient.client.post(endpoint, data: data);
  }

  // Add other methods for PUT, DELETE, etc., if needed
}
