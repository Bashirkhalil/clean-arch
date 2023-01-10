
import '../../domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  PostModel({required super.id, required super.title, required super.body});


  factory PostModel.fromJson(Map<String,dynamic> json) =>
      PostModel(id: json['id'], title: json['title'], body: json['body']);

  Map<String,dynamic> toJson() {
    return {
      'id':id ,
      'title':title ,
      'body':body,
    };
  }

}