import 'package:flutter/material.dart';
import 'package:projectx/model/news_model.dart';
import 'package:projectx/services/news_service.dart';
import 'package:projectx/widgets/news_card.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<NewsModel> news = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  getGeneralNews() {
    NewsService.getNews(url: '/posts', qurey: {}).then((value) {
      print(value.data['title']);
    }).catchError((Error) {
      print(Error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: news.length,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NewsCard(
              news: news[index],
            )));
  }
}
