import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc_counter_test_event.dart';
part 'bloc_counter_test_state.dart';

class BlocCounterTestBloc
    extends Bloc<BlocCounterTestEvent, BlocCounterTestState> {
  BlocCounterTestBloc() : super(BlocCounterTestInitial()) {
    on<InitCounter>((event, emit) async {
      emit(BlocCounterLoading());

      await Future.delayed(const Duration(seconds: 2));

      emit(BlocCounterTestCounter(event.counter));
    });

    on<IncrementEvent>((event, emit) {
      emit(BlocCounterTestCounter(event.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(BlocCounterTestCounter(event.counter - 1));
    });

    add(const InitCounter());
  }
}
