import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticalModel>> getNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=39050105e6f64968aaf6fc79577b0f77&country=us&category=general",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articals = jsonData['articles'];

    List<ArticalModel> articalslist = [];
    for (var artical in articals) {
      articalslist.add(
        ArticalModel(
          title: artical["title"],
          description: artical['description'],
          urlToImage: artical['urlToImage'],
        ),
      );
    }
    return articalslist;
  }
}
