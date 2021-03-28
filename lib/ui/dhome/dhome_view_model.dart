import 'package:app/data/provider/feed_repository_provider.dart';
import 'package:app/data/repository/feed_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dhomeViewModelProvider = ChangeNotifierProvider(
  (ref) => DHomeViewModel(ref.read(feedRepositoryProvider)),
);

class DHomeViewModel extends ChangeNotifier {
  final FeedRepository feedRepository;

  DHomeViewModel(this.feedRepository);
}
