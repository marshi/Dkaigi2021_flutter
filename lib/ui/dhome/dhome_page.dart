import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

import '../drawer/drawer.dart';

class DHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DkaigiDrawer(),
      body: Container(
        color: Colors.white,
      ),
      appBar: AppBar(
        title: Text(
          L10n.of(context)!.home,
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          // action button
          IconButton(
            icon: const Icon(Icons.color_lens),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
