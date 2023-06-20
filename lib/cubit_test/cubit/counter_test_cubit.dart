import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_test_state.dart';

class CubitCounterTestCubit extends Cubit<CubitCounterTestState> {
  CubitCounterTestCubit() : super(const CubitCounterValue(0));

  increment() {
    emit(CubitCounterValue(state.counter + 1));
  }

  decrement() {
    emit(CubitCounterValue(state.counter - 1));
  }
}
