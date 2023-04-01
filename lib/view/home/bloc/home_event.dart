part of 'home_bloc.dart';


abstract class HomeEvent {}

class HomeDataLoadingEvent extends HomeEvent{}

class HomeDataLoadEvent extends HomeEvent{}

class HomeDataLoadedEvent extends HomeEvent{}

class HomeDataLoadErrorEvent extends HomeEvent{}