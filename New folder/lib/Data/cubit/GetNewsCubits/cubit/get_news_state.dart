part of 'get_news_cubit.dart';

@immutable
 class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}
  
final class GetNewsLoading extends GetNewsState {}

final class GetNewsSuccess extends GetNewsState {
  final GetNewModel response;
  GetNewsSuccess({required this.response});
}

final class GetNewsError extends GetNewsState {}