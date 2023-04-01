part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeDataLoadingState extends HomeState {}

class HomeDataLoadedState extends HomeState {
  late final NeyYorkTimesData neyYorkTimesData;
  HomeDataLoadedState({required this.neyYorkTimesData});
}

class HomeDataLoadErrorState extends HomeState {
  late String errorMessage;
  HomeDataLoadErrorState({required this.errorMessage});
}
