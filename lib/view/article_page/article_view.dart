import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyt/model/NeyYorkTimesData_Model.dart';
import 'package:nyt/view/article_page/view/details_header_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.selectedArticleDetails.title.toString()),),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           DetailsHeaderWidget(
  //             imagUrl: widget
  //                 .selectedArticleDetails.media[0].mediaMetadata[0].url
  //                 .toString(),
  //             title: widget.selectedArticleDetails.title.toString(),
  //             authorName: widget.selectedArticleDetails.byline.toString(),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
  //             child: Text(
  //               widget.selectedArticleDetails.resultAbstract.toString(),
  //               style: GoogleFonts.acme(
  //                 fontSize: 14,
  //                 fontWeight: FontWeight.w400,
  //                 height: 1.8,
  //                 color: Color(0xff95a6aa),
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 24.0),
  //             child: Text(
  //               widget.selectedArticleDetails.subsection.toString(),
  //               style: GoogleFonts.acme(
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.w700,
  //                 height: 1.3,
  //                 color: Color(0xff1a434e),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  }

