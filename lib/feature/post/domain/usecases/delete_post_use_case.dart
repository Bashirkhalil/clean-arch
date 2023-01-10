import 'package:clean_archecture/feature/post/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/strings/failure.dart';

class DeletePostUseCase {
  final PostRepository mPostRepository ;

  DeletePostUseCase(this.mPostRepository);

  Future<Either<Failure,Unit>> call(int postId) async => await mPostRepository.deletePost(postId);
}