import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_duvar_kagidi_uygulamasi/widgets/images_widget.dart';
import 'package:flutter_duvar_kagidi_uygulamasi/widgets/search_widget.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    const Text(
                      'Favorites',
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
              Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your favorites',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: ImagesWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
