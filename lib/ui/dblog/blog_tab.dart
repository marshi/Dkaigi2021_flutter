import 'package:app/ui/component/item/dhome_item.dart';
import 'package:app/ui/dblog/dblog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlogTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read(dblogViewModelProvider);
    return HookBuilder(builder: (context) {
      return HookBuilder(
        builder: (context) {
          final items = useProvider(
            dblogViewModelProvider.state.select((value) => value.blogItems),
          );
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DHomeItem(index, items[index]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(color: Colors.black);
                  },
                  itemCount: items.length,
                ),
              ),
              MaterialButton(
                child: const Text("aiueo"),
                onPressed: viewModel.feed,
              ),
            ],
          );
        },
      );
    });
  }
}
