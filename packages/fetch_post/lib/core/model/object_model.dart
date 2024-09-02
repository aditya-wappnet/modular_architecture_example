class ObjectModel {
  final String id;
  final String name;
  final Map<String, dynamic>? data;

  ObjectModel({
    required this.id,
    required this.name,
    this.data,
  });

  factory ObjectModel.fromJson(Map<String, dynamic> json) {
    return ObjectModel(
      id: json['id'] as String,
      name: json['name'] as String,
      data: json['data'] as Map<String, dynamic>?,
    );
  }
}
