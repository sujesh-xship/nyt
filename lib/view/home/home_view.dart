import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nyt/constants/app-constants.dart';
import 'package:nyt/service/network_service.dart';
import 'package:nyt/view/article_page/article_view.dart';
import 'package:nyt/view/home/bloc/home_bloc.dart';

import '../../model/NeyYorkTimesData_Model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appTitle),
      ),
      body: BlocProvider(
        create: (context) =>
            HomeBloc(RepositoryProvider.of<NetWorkService>(context))
              ..add(HomeDataLoadEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeDataLoadedState) {
              return ListView.builder(
                itemCount: state.neyYorkTimesData.results.length,
                itemBuilder: (context, index) {
                  final data = state.neyYorkTimesData.results;

                  return ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.account_circle),
                    ),
                    title: Text(data[index].title ?? AppConstants.replacementText),
                    subtitle: Row(
                      children: [
                        Flexible(
                            child: Text(data[index].byline ?? AppConstants.replacementText)),
                        const SizedBox(
                          width: 5,
                        ),
                        Flexible(
                            child: Text(data[index].publishedDate.toString() ??
                                "Not available")),
                      ],
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticleView(
                                  selectedArticleDetails:
                                      state.neyYorkTimesData.results[index],
                                )),
                      );
                    },
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
