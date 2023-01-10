import 'package:clean_archecture/core/strings/exception.dart';
import 'package:clean_archecture/core/strings/failure.dart';
import 'package:clean_archecture/feature/post/data/dataSources/local/post_local_data_source.dart';
import 'package:clean_archecture/feature/post/data/dataSources/remote/post_remote_dataSource.dart';
import 'package:clean_archecture/feature/post/domain/entities/post_entity.dart';
import 'package:clean_archecture/feature/post/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network_info/network_info.dart';

class PostRepositoryImpl extends PostRepository {
  final PostRemoteDataSource mPostRemoteDataSource;
  final PostLocalDataSource mPostLocalDataSource;
  final NetworkInfo mNetworkInfo;

  PostRepositoryImpl(this.mNetworkInfo,
      {required this.mPostRemoteDataSource,
      required this.mPostLocalDataSource});

  @override
  Future<Either<Failure, Unit>> addPost(PostEntity mPostEntity)  {}

  @override
  Future<Either<Failure, Unit>> deletePost(int id) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PostEntity>>> getAllPost() async {
    if (mNetworkInfo.isDeviceConnected) {
      try {
        final remotePost = await mPostRemoteDataSource.getAllPost();
        mPostLocalDataSource.cachePost(remotePost);
        return Right(remotePost);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try{
       final localPost = await mPostLocalDataSource.getCachePost();
       return Right(localPost);
      }on EmptyCacheException {
      return left(EmptyCache());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePost(PostEntity postEntity) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
