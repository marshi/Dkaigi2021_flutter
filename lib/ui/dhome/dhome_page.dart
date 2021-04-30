import 'package:app/ui/dhome/home_tab.dart';
import 'package:app/ui/dhome/my_behavior.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class DHomePage extends StatefulWidget {
  @override
  _DHomePageState createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {
  final _tab = <Tab>[
    const Tab(text: "Home"),
    const Tab(text: "Blog"),
    const Tab(text: "Video"),
    const Tab(text: "Podcast"),
  ];

  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _tab.length,
        child: BackdropScaffold(
          appBar: BackdropAppBar(
            title: Container(child: Text("TabBar"), width: double.infinity),
            bottom: TabBar(
              tabs: _tab,
            ),
          ),
          backLayer: BackdropNavigationBackLayer(key: key, items: [
            Text("TabBar"),
            Text("TabBar2"),
          ]),
          stickyFrontLayer: true,
          frontLayer: ScrollConfiguration(
            behavior: MyBehavior(),
            child: NewWidget(backLayerKey: key),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final GlobalKey? backLayerKey;
  double y = 1.0;

  NewWidget({
    Key? key,
    this.backLayerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        final height = (backLayerKey?.currentContext?.size?.height);
        final dy = details.delta.dy;
        y -= dy;
        y = y.clamp(0.0, height!);
        var backdrop = Backdrop.of(context);
        print("$y $dy $height");
        final animateTo = (y - dy) / height;
        final ani = animateTo.clamp(0.0, 1.0);
        print("(${y} - $dy) / $height = ${ani}");
        backdrop.widget.backLayer.key;
        backdrop.animationController
            .animateTo(ani, duration: Duration(seconds: 1));
      },
      child: TabBarView(
        children: [
          HomeTab(
            icon: Icons.directions_car,
          ),
          TabPage(icon: Icons.directions_bike),
          TabPage(icon: Icons.directions_bike),
          TabPage(icon: Icons.directions_bike),
        ],
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData icon;

  const TabPage({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Icon(icon));
  }
}
