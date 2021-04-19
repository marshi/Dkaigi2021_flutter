import 'package:app/ui/dhome/dhome_view_model.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTab extends StatelessWidget {
  final IconData icon;

  HomeTab({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewModel = context.read(dhomeViewModelProvider);
    return BackdropScaffold(
      appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
      drawerEnableOpenDragGesture: true,
      backLayer: Text("aiueo"),
      frontLayer: HookBuilder(
        builder: (context) {
          var scrollController = ScrollController();
          return Column(
            children: [
              HookBuilder(builder: (context) {
                final feedItems = useProvider(
                  dhomeViewModelProvider.state
                      .select((value) => value.feedItems),
                );
                return Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    shrinkWrap: true,
                    itemCount: feedItems.length,
                    itemBuilder: (context, index) {
                      return Text(
                        feedItems[index].id.toString(),
                        key: ValueKey(feedItems[index].id),
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
      ),
    );
  }
}
