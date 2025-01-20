import 'package:dio/dio.dart';
import '../Widgets/newsobject.dart';

class apidio {
  final dio = Dio();
  Future<List<newsobject>> getHttp(String link) async {
    final response = await dio.get(link);
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<newsobject> news = [];
    for (var article in articles) {
      newsobject obj = newsobject(
        title: article['title'],
        imageSRC: article['urlToImage'],
        Subtitle: article['description'],
      );
      news.add(obj);
    }
    return news;
  }
}
