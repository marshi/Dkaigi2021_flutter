import 'package:app/ui/dhome/dhome_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTab extends StatelessWidget {
  final IconData icon;

  const HomeTab({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewModel = context.read(dhomeViewModelProvider);

    return HookBuilder(
      builder: (context) {
        final feedItems = useProvider(
          dhomeViewModelProvider.state.select((value) => value.feedItems),
        );
        print("aiueo");
        print(feedItems);
        return Column(
          children: [
            MaterialButton(
              child: const Text("aiueo"),
              onPressed: () {
                viewModel.feedContents();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: feedItems.length,
                itemBuilder: (context, index) {
                  return Text(feedItems[index].id.toString());
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
