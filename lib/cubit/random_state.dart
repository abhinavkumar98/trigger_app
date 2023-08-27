part of 'random_cubit.dart';

@immutable
abstract class RandomState {}

class RandomInitial extends RandomState {}

class RandomPageSuccessState extends RandomState {
  RandomPageSuccessState({this.message});
  final String? message;
}

class RandomPageErrorState extends RandomState {
  RandomPageErrorState({this.message});
  final String? message;
}
