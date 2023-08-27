import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'random_state.dart';

class RandomCubit extends Cubit<int> {
  RandomCubit() : super(-1);
  final random = Random();
  int? randomNumber;
  var timestamp = DateTime.now().second.toString();
  void generateRandomNumber({int minValue = 0, maxValue = 59}) {
    randomNumber = minValue + random.nextInt(maxValue);
    emit(randomNumber!);
  }
}
