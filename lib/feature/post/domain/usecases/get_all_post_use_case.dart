import 'package:clean_archecture/feature/post/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/strings/failure.dart';
import '../entities/post_entity.dart';

class GetAllPostUseCase {
    final PostRepository mPostRepository ;

    GetAllPostUseCase(this.mPostRepository);

    Future<Either<Failure,List<PostEntity>>> call () async => await mPostRepository.getAllPost();
}