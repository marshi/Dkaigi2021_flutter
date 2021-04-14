import 'package:app/data/model/dkaigi/feed/feed_response.dart';
import 'package:app/data/model/result.dart';
import 'package:app/data/remote/feed_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FeedDataSourceImpl implements FeedDataSource {
  FeedDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<FeedResponse> feedContents() {
    print("feed");
    print(_dio);
    return _dio
        .get<Map<String, dynamic>>("/feeds/recentaieuoiu")
        .then((response) {
      print("a get ${response} oo");
      return FeedResponse.fromJson(response.data!);
    }).onError((error, stackTrace) {
      print(error);
      return Future.error(error!);
    });
    // future.whenComplete(() => print("complete"));
    // return future;
    // dio.get("/feeds/recent").future((value) => FeedItem.);
    // return Future.sync(
    //   () => Result.success(
    //     data: [
    //       FeedItem(
    //         id: id++,
    //         title: const MultiLanguageTitle(
    //           jaTitle: "jaTitle",
    //           enTitle: "enTitle",
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
