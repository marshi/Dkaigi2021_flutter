import 'package:app/constants.dart';
import 'package:app/data/remote/app_dio.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../remote/feed_data_source.dart';
import '../remote/feed_data_source_impl.dart';
import 'firebase_auth_provider.dart';

final feedDataSourceProvider = Provider<FeedDataSource>(
  (ref) => FeedDataSourceImpl(AppDio.instance(
    null
    // BaseOptions(baseUrl: Constants.of().dEndpoint),
  )),
);
