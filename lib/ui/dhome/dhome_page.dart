import 'package:app/ui/dblog/blog_tab.dart';
import 'package:app/ui/dhome/home_tab.dart';
import 'package:app/ui/dhome/my_behavior.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class DHomePage extends StatefulWidget {
  @override
  _DHomePageState createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage>
    with SingleTickerProviderStateMixin {
  final _tab = <Tab, Widget>{
    Tab(text: "Home"): HomeTab(),
    Tab(text: "Blog"): BlogTab(),
    Tab(text: "Video"): TabPage(icon: Icons.directions_bike),
    Tab(text: "Podcast"): TabPage(icon: Icons.directions_bike),
  };

  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: _tab.length, vsync: this);
  }

  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackdropScaffold(
        appBar: BackdropAppBar(
          title: Container(child: Text("TabBar"), width: double.infinity),
          bottom: TabBar(
            tabs: _tab.keys.toList(),
            controller: controller,
          ),
        ),
        backLayer: BackdropNavigationBackLayer(key: key, items: [
          Text("TabBar"),
          Text("TabBar2"),
        ]),
        stickyFrontLayer: true,
        frontLayer: ScrollConfiguration(
          behavior: MyBehavior(),
          child: NewWidget(controller, _tab),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  final TabController controller;
  final Map<Tab, Widget> tabs;

  NewWidget(this.controller, this.tabs);

  @override
  _NewWidgetState createState() => _NewWidgetState(controller, tabs);
}

class _NewWidgetState extends State<NewWidget> {
  double y = 1.0;
  late final TabController controller;
  final Map<Tab, Widget> tabs;

  _NewWidgetState(this.controller, this.tabs);

  void initState() {
    super.initState();
    controller.addListener(() {
      print(controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    controller.index;
    return TabBarView(
      controller: controller,
      children: tabs.values.toList(),
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
