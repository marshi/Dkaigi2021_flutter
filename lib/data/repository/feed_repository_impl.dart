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
      return v.articles.map(
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
    });
    return Result.guardFuture(() => future);
  }
}
