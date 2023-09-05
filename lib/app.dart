import 'package:flutter/material.dart';
import 'package:sugarbit/pages/archive_page/archive_page.dart';
import 'package:sugarbit/pages/favorites_page/favorites_page.dart';
import 'package:sugarbit/pages/home_page/home_page.dart';
import 'package:sugarbit/pages/settings_page/settings_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  final List<Widget> pages = [
    const HomePage(),
    const FavoritesPage(),
    const ArchivePage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: pages.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue[300],
            title: const Text("Your Todo's"),
            elevation: 0,
          ),
          body: TabBarView(children: pages),
          bottomNavigationBar: Container(
            color: Colors.lightBlue[300],
            child: TabBar(
              indicatorColor: Colors.white.withOpacity(0.5),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              indicatorWeight: 5,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.white.withOpacity(0.2),
              ),
              labelColor: Colors.white,
              tabs: const [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.star)),
                Tab(icon: Icon(Icons.archive)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
