import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/counter_model.dart';

part 'bloc_with_model_test_event.dart';
part 'bloc_with_model_test_state.dart';

class BlocWithModelTestBloc
    extends Bloc<BlocWithModelTestEvent, BlocWithModelTestState> {
  BlocWithModelTestBloc() : super(BlocWithModelTestInitial()) {
    on<InitModelCounter>((event, emit) async {
      emit(BlocWithModelLoading());

      await Future.delayed(const Duration(seconds: 2));

      emit(BlocWithModelCounter(CounterModel(counter: event.counterValue)));
    });

    on<IncrementModelEvent>((event, emit) {
      emit(BlocWithModelCounter(CounterModel(counter: event.counterValue + 1)));
    });

    on<DecrementModelEvent>((event, emit) {
      emit(BlocWithModelCounter(CounterModel(counter: event.counterValue - 1)));
    });

    add(const InitModelCounter());
  }
}
