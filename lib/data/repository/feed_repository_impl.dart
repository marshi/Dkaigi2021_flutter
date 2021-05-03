import 'package:app/data/remote/feed_data_source.dart';
import 'package:app/model/author.dart';
import 'package:app/model/feed_item.dart';
import 'package:app/model/media.dart';
import 'package:app/model/multi_language_text.dart';

import '../model/result.dart';
import 'feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl({required FeedDataSource dataSource})
      : _dataSource = dataSource;

  final FeedDataSource _dataSource;

  @override
  Future<Result<List<FeedItem>>> feedContents() {
    final future = _dataSource.feedContents().then((v) {
      final blogs = v.articles.map(
        (article) {
          return FeedItem.blog(
            id: article.id,
            publishedAt: DateTime.parse(article.publishedAt),
            image: article.thumbnail.toImage(),
            media: Media.medium,
            title: MultiLanguageText(
              jaTitle: article.title,
              enTitle: article.title,
            ),
            summary: MultiLanguageText(
              jaTitle: article.summary,
              enTitle: article.summary,
            ),
            link: article.link,
            language: article.language,
            author: Author(
              name: article.authorName,
              link: article.authorUrl,
            ),
          );
        },
      ).toList();
      final videos = v.recordings.map((recording) {
        return FeedItem.video(
          id: recording.id,
          publishedAt: DateTime.parse(recording.publishedAt),
          image: recording.thumbnail.toImage(),
          media: Media.youtube,
          title: MultiLanguageText(
              jaTitle: recording.title.japanese,
              enTitle: recording.title.english),
          summary: MultiLanguageText(
              jaTitle: recording.summary.japanese,
              enTitle: recording.summary.english),
          link: recording.link,
        );
      }).toList();
      final fm = v.episodes.map((recording) {
        return FeedItem.podcast(
            id: recording.id,
            publishedAt: DateTime.parse(recording.publishedAt),
            image: recording.thumbnail.toImage(),
            media: Media.droidKaigiFM,
            title: MultiLanguageText(
                jaTitle: recording.title, enTitle: recording.title),
            summary: MultiLanguageText(
                jaTitle: recording.summary, enTitle: recording.summary),
            link: recording.link,
            speakers:
                recording.speakers.map((e) => e.toSpeakerModel()).toList(),
            podcastLink: recording.link);
      }).toList();
      final feedItems = blogs + videos + fm;
      feedItems.sort((a, b) => -a.publishedAt.compareTo(b.publishedAt));
      return feedItems;
    });
    return Result.guardFuture(() => future);
  }
}
