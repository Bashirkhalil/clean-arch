import 'package:clean_archecture/feature/post/domain/entities/post_entity.dart';
import 'package:clean_archecture/feature/post/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/strings/failure.dart';

class UpdatePostUseCase {
  final PostRepository mPostRepository ;

  UpdatePostUseCase(this.mPostRepository);

  Future<Either<Failure,Unit>> call(PostEntity mPostEntity) async => mPostRepository.updatePost(mPostEntity);

}