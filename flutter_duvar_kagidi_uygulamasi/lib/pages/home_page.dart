import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_duvar_kagidi_uygulamasi/widgets/images_widget.dart';
import 'package:flutter_duvar_kagidi_uygulamasi/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    const Text(
                      'DP WallPapers',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'favPage');
                      },
                      child: const Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              const SearchWidget(),
              const TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                padding: EdgeInsets.symmetric(horizontal: 5),
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2),
                  ),
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Trending'),
                  Tab(text: 'Featured'),
                  Tab(text: 'Nature'),
                  Tab(text: 'Sky'),
                  Tab(text: 'See'),
                ],
              ),
              const Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    ImagesWidget(),
                    ImagesWidget(),
                    ImagesWidget(),
                    ImagesWidget(),
                    ImagesWidget(),
                    ImagesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
