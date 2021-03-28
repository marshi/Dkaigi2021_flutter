import 'package:app/data/model/dkaigi/feed_item.dart';
import 'package:app/data/model/dkaigi/multi_language_title.dart';
import 'package:app/data/model/result.dart';
import 'package:app/data/remote/feed_data_source.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_data_source.dart';

class FeedDataSourceImpl implements FeedDataSource {
  FeedDataSourceImpl(this._firebaseAuth);

  final firebase.FirebaseAuth _firebaseAuth;

  Future<void> signOut() {
    return GoogleSignIn()
        .signOut()
        .then((_) => _firebaseAuth.signOut())
        .catchError((error) {
      debugPrint(error.toString());
      throw error;
    });
  }

  @override
  Future<Result<FeedItem>> feedContents() {
    return Future.sync(
      () => const Result.success(
        data: FeedItem(
          id: "id",
          title: MultiLanguageTitle(jaTitle: "jaTitle", enTitle: "enTitle"),
        ),
      ),
    );
  }
}
