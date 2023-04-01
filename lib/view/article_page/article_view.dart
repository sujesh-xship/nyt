import 'package:flutter/material.dart';
import 'package:nyt/model/NeyYorkTimesData_Model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final Result selectedArticleDetails;

  const ArticleView({
    Key? key,
    required this.selectedArticleDetails,
  }) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.selectedArticleDetails.url.toString()),
      );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text(widget.selectedArticleDetails.title.toString()),),
  //     body: WebViewWidget(
  //       controller: controller,
  //     ),
  //   );
  // }


@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        children: [],


      ),
    );
  }


}
