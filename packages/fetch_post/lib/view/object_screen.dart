import 'package:fetch_post/view/object_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PostScreen extends GetView<PostController>  {
  const PostScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetched Objects'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (controller.errorMessage.value.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        } else if (controller.objects.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          return ListView.builder(
            itemCount: controller.objects.length,
            itemBuilder: (context, index) {
              final object = controller.objects[index];
              return ListTile(
                title: Text(object.name),
                subtitle: Text(object.data?.entries
                        .map((e) => '${e.key}: ${e.value}')
                        .join(', ') ??
                    'No details'),
              );
            },
          );
        }
      }),
    );
  }
}
