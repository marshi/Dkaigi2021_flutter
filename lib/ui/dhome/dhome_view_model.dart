import 'package:app/data/provider/feed_repository_provider.dart';
import 'package:app/data/repository/feed_repository.dart';
import 'package:app/ui/dhome/dhome_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dhomeViewModelProvider = StateNotifierProvider(
  (ref) => DHomeViewModel(ref.read(feedRepositoryProvider)),
);

class DHomeViewModel extends StateNotifier<DhomeState> {
  final FeedRepository _feedRepository;

  DHomeViewModel(this._feedRepository) : super(const DhomeState(feedItems: []));

  Future<void> feedContents() {
    print("feedContents");
    return _feedRepository.feedContents().then((value) {
      if (value.isSuccess) {
        state = state.copyWith(feedItems: value.dataOrThrow);
        print("state");
        print(state);
      } else {
        print("aiueo ${value} ababa");
      }
    }).onError((error, stackTrace) {
      print("ai ${error}");
      print("ai ${stackTrace}");
    });
  }
}
