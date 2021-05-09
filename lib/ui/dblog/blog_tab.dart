import 'package:app/ui/dblog/dblog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlogTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read(dblogViewModelProvider);
    return HookBuilder(builder: (context) {
      final state = useProvider(
          dblogViewModelProvider.state.select((value) => value.blogItems));
      print(state);
      return Container();
    });
  }
}
