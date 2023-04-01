import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:nyt/service/network_service.dart';

import '../../../model/NeyYorkTimesData_Model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NetWorkService netWorkService;

  HomeBloc(this.netWorkService) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(HomeDataLoadingState());
      if (event is HomeDataLoadEvent) {
        try {
          final newYorkTimesData =
              await netWorkService.fetchMostViewedArticles();
          //debugPrint(newYorkTimesData.length.toString());
          emit(HomeDataLoadedState(neyYorkTimesData: newYorkTimesData));
        } catch (exception) {
          emit(HomeDataLoadErrorState(errorMessage: exception.toString()));
        }
      }
    });
  }
}
