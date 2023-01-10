 import 'package:dartz/dartz.dart';

import '../../../../core/strings/failure.dart';
import '../entities/post_entity.dart';

abstract class PostRepository {
  Future<Either<Failure,List<PostEntity>>> getAllPost();
  Future<Either<Failure,Unit>> deletePost(int id);
  Future<Either<Failure,Unit>> updatePost(PostEntity postEntity);
  Future<Either<Failure,Unit>> addPost(PostEntity mPostEntity);
}