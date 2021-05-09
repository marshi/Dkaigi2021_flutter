import 'package:app/data/provider/feed_repository_provider.dart';
import 'package:app/data/repository/feed_repository.dart';
import 'package:app/model/feed_item.dart';
import 'package:app/ui/dblog/dblog_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dblogViewModelProvider = StateNotifierProvider(
    (ref) => DblogViewModel(ref.read(feedRepositoryProvider)));

class DblogViewModel extends StateNotifier<DblogState> {
  final FeedRepository feedRepository;

  DblogViewModel(this.feedRepository) : super(const DblogState(blogItems: []));

  void feed() async {
    final feed = await feedRepository.feedContents();
    feed.when(
      success: (data) {
        state = state.copyWith(
            blogItems: state.blogItems + data.whereType<Blog>().toList());
      },
      failure: (error) {
        print(error);
      },
    );
  }
}
