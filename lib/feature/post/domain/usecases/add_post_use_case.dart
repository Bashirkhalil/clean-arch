import 'package:clean_archecture/feature/post/domain/entities/post_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/strings/failure.dart';
import '../repository/post_repository.dart';

class AddPostUseCase {
  final PostRepository mPostRepository ;

  AddPostUseCase(this.mPostRepository);

  Future<Either<Failure,Unit>>  call(PostEntity mPostEntity)
  async => mPostRepository.addPost(mPostEntity);

}