import 'package:flutter/material.dart';
import '../Widgets/news.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: AppBar()
      ),
      body: const SizedBox(
        child:
        News(
            link:
            'https://newsapi.org/v2/top-headlines?category=Sports&apiKey=0466a7d65c07405da61a72d7b6d6521f'
        ),
      ),);
  }

}