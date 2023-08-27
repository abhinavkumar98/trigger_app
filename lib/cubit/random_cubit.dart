import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'random_state.dart';

class RandomCubit extends Cubit<RandomState> {
  RandomCubit() : super(RandomInitial());
}
