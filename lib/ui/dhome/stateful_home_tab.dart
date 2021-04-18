import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'dhome_view_model.dart';

class StatefulHomeTab extends StatefulWidget {
  @override
  _StatefulHomeTabState createState() => _StatefulHomeTabState();
}

class _StatefulHomeTabState extends State<StatefulHomeTab> {
  final scrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    _itemPositionsListener.itemPositions.addListener(_itemPositionsCallback);
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = context.read(dhomeViewModelProvider);

    return HookBuilder(
      builder: (context) {
        final feedItems = useProvider(
          dhomeViewModelProvider.state.select((value) => value.feedItems),
        );

        return Column(
          children: [
            HookBuilder(builder: (context) {
              return Expanded(
                child: ScrollablePositionedList.builder(
                  itemCount: feedItems.length,
                  itemScrollController: scrollController,
                  itemPositionsListener: _itemPositionsListener,
                  itemBuilder: (context, index) {
                    SchedulerBinding.instance?.addPostFrameCallback((_) {
                      print("build hahah");
                      _scroll(feedItems.length - 1);
                    });
                    return Text(
                      feedItems[index].id.toString(),
                    );
                  },
                ),
              );
            }),
            HookBuilder(
              builder: (context) {
                return MaterialButton(
                  child: const Text("aiueo"),
                  onPressed: () {
                    viewModel.feedContents();
                    // () async {
                    //   await Future.delayed(const Duration(seconds: 1));
                    //   _scroll(feedItems.length - 1);
                    // }();
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // 使い終わったら破棄
    _itemPositionsListener.itemPositions.removeListener(_itemPositionsCallback);
    super.dispose();
  }

  void _scroll(int position) {
    // スムーズスクロールを実行する
    scrollController.scrollTo(
      index: position,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  void _itemPositionsCallback() {
    // 表示中のリストアイテムのインデックス情報を取得
    final visibleIndexes = _itemPositionsListener.itemPositions.value
        .toList()
        .map((itemPosition) => itemPosition.index);
    // print('現在表示中アイテムのindexは $visibleIndexes');
  }
}
