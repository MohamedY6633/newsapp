import 'package:flutter/material.dart';
import 'package:newsapp/Categories%20Screens/Entertainment.dart';
import 'package:newsapp/Categories%20Screens/Health.dart';
import 'package:newsapp/Categories%20Screens/Science.dart';
import 'package:newsapp/Categories%20Screens/Technology.dart';
import 'package:newsapp/Categories%20Screens/sports.dart';
import 'package:newsapp/Widgets/categories.dart';
import 'package:newsapp/Categories%20Screens/buisness.dart';
import 'package:newsapp/Widgets/news.dart';

class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Categories> categeries = [
      Categories(
        asset: 'assets/photos/business.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const buisness();
              },
            ),
          );
        },
      ),
      Categories(
        asset: 'assets/photos/Entertainment.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Entertainment();
              },
            ),
          );
        },
      ),
      Categories(
        asset: 'assets/photos/health.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Health();
              },
            ),
          );
        },
      ),
      Categories(
        asset: 'assets/photos/science.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Science();
              },
            ),
          );
        },
      ),
      Categories(
        asset: 'assets/photos/Sports.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Sports();
              },
            ),
          );
        },
      ),
      Categories(
        asset: 'assets/photos/Technology.jpg',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Technology();
              },
            ),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categeries.length,
              itemBuilder: (context, index) {
                return categeries[index];
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.5),
            child: Container(
              width: double.infinity,
              height: 659,
              child: News(
                  link:
                      'https://newsapi.org/v2/top-headlines?category=general&apiKey=0466a7d65c07405da61a72d7b6d6521f'),
            ),
          ),
        ],
      ),
    );
  }
}
