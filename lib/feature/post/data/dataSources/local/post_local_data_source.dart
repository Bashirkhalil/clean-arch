import 'package:clean_archecture/feature/post/data/model/post_model.dart';
import 'package:clean_archecture/feature/post/domain/entities/post_entity.dart';

abstract class PostLocalDataSource{
  Future<List<PostModel>> getCachePost();
  cachePost(List<PostModel> mPostModel);
}

class PostLocalDataSourceImp extends PostLocalDataSource {
  @override
  cachePost(List<PostModel> mPostModel) {
    // TODO: implement cachePost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getCachePost() {
    // TODO: implement getCachePost
    throw UnimplementedError();
  }

}