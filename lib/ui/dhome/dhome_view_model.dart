import 'package:app/data/provider/feed_repository_provider.dart';
import 'package:app/data/repository/feed_repository.dart';
import 'package:app/ui/dhome/dhome_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dhomeViewModelProvider = StateNotifierProvider(
  (ref) => DHomeViewModel(ref.read(feedRepositoryProvider)),
);

class DHomeViewModel extends StateNotifier<DhomeState> {
  final FeedRepository _feedRepository;

  DHomeViewModel(this._feedRepository)
      : super(DhomeState(feedItems: [], scrolled: false, id: 0));

  Future<void> feedContents() {
    return _feedRepository.feedContents().then((value) {
      if (value.isSuccess) {
        state = state.copyWith(
            feedItems: state.feedItems +
                value.dataOrThrow
                    .map((e) => e.copyWith(id: "${e.id}_${state.id}"))
                    .toList(),
            scrolled: false,
            id: state.id + 1);
      } else {
        print("aiueo ${value} ababa");
      }
    }).onError((error, stackTrace) {
      print("ai ${stackTrace}");
    });
  }

  void scroll() {
    state = state.copyWith(scrolled: false);
  }

  void scrolled() {
    state = state.copyWith(scrolled: true);
  }
}
