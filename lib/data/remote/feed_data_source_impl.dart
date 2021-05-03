import 'package:app/data/model/dkaigi/feed/feed_response.dart';
import 'package:app/data/remote/feed_data_source.dart';
import 'package:dio/dio.dart';

class FeedDataSourceImpl implements FeedDataSource {
  FeedDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<FeedResponse> feedContents() {
    return _dio.get<Map<String, dynamic>>("/feeds/recent").then((response) {
      return FeedResponse.fromJson(response.data!);
    }).onError((error, stackTrace) {
      return Future.error(error!);
    });
  }
}
