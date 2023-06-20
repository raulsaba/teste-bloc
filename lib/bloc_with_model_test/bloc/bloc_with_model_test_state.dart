part of 'bloc_with_model_test_bloc.dart';

abstract class BlocWithModelTestState extends Equatable {
  const BlocWithModelTestState();

  @override
  List<Object> get props => [];
}

class BlocWithModelTestInitial extends BlocWithModelTestState {}

class BlocWithModelLoading extends BlocWithModelTestState {}

class BlocWithModelCounter extends BlocWithModelTestState {
  final CounterModel counter;

  const BlocWithModelCounter(this.counter);

  @override
  List<Object> get props => [counter];
}
