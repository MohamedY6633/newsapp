import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Services/apidio.dart';
import 'package:newsapp/Widgets/newsobject.dart';

class News extends StatefulWidget {
  final String link;
  const News({
    super.key,
    required this.link,
  });

  @override
  State<News> createState() => NewsState();
}

class NewsState extends State<News> {
  List<newsobject> newsobj = [];
  late final String link;
  bool isLoading = true;

  @override
  initState() {
    super.initState();
    apidio api = apidio();
    link = widget.link;
    apiresponse(api);
  }

  Future<void> apiresponse(apidio api) async {
    newsobj = await api.getHttp(link);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.orange,
              ),
              Text(
                'Loading',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'TirtoWritterRegular',
                    fontWeight: FontWeight.w700),
              )
            ],
          ))
        : ListView.builder(
            itemCount: newsobj.length,
            itemBuilder: (context, index) {
              final newsItem = newsobj[index];
              return Padding(
                padding: const EdgeInsets.all(2),
                child: GestureDetector(
                  child: SizedBox(
                    width: double.infinity,
                    height: null,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: CachedNetworkImage(
                              imageUrl: newsItem.imageSRC ?? '',
                              errorWidget: (context, url, error) => Image.asset(
                                  'assets/photos/No-Image-Placeholder.svg.png'),
                            )),
                        Text(
                          newsItem.title ?? '',
                          style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'TirtoWritterRegular',
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          newsItem.Subtitle ?? '',
                          style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Tajawal'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }
}
