import 'package:app/model/feed_item.dart';
import 'package:app/ui/component/item/dhome_item.dart';
import 'package:app/ui/dhome/dhome_header_item.dart';
import 'package:app/ui/dhome/dhome_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewModel = context.read(dhomeViewModelProvider);
    return HookBuilder(
      builder: (context) {
        var scrollController = ScrollController();
        return Column(
          children: [
            HookBuilder(builder: (context) {
              final feedItems = useProvider(
                dhomeViewModelProvider.state.select((value) => value.feedItems),
              );
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      Divider(color: Colors.black),
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: feedItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: feedItem(index, feedItems[index]),
                    );
                  },
                ),
              );
            }),
            MaterialButton(
              child: const Text("aiueo"),
              onPressed: () {
                viewModel.feedContents();
              },
            ),
          ],
        );
      },
    );
  }

  Widget feedItem(int index, FeedItem feedItem) {
    if (index == 0) {
      return DhomeHeaderItem(feedItem);
    } else {
      return DHomeItem(index, feedItem);
    }
  }
}
