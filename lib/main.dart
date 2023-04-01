import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nyt/service/network_service.dart';
import 'package:nyt/view/article_page/article_view.dart';
import 'package:nyt/view/home/bloc/home_bloc.dart';
import 'package:nyt/view/home/home_view.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(NetWorkService()),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => NetWorkService(),
          ),
        ],
        child: MaterialApp(
          title: "nyt app",
          theme: ThemeData(
            fontFamily: "Poppins",
          ),
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(),
        ),
      ),
    );
  }
}
