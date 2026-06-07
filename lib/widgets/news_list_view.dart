import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticalModel> articals = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
    isLoading = false;
  }

  Future<void> getGeneralNews() async {
    articals = await NewsServices(dio: Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articals.length,
              (context, index) {
                return NewsTile(
                  artical: articals[index],
                );
              },
            ),
          );
  }
}
