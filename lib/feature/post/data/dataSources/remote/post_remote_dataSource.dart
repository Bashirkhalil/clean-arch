import 'package:clean_archecture/feature/post/domain/entities/post_entity.dart';
import 'package:dartz/dartz.dart';
import '../../model/post_model.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getAllPost();
  Future<Unit> deletePost(int postId);
  Future<Unit> updatePost(PostModel mPostModel);
  Future<Unit> addPost(PostModel mPostModel);
}

class PostRemoteDataSourceImp extends PostRemoteDataSource {
  @override
  Future<Unit> addPost(PostModel mPostModel) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<Unit> deletePost(int postId) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getAllPost() {
    // TODO: implement getAllPost
    throw UnimplementedError();
  }

  @override
  Future<Unit> updatePost(PostModel mPostModel) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }



}