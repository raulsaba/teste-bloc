part of 'bloc_counter_test_bloc.dart';

abstract class BlocCounterTestState extends Equatable {
  const BlocCounterTestState();

  @override
  List<Object> get props => [];
}

class BlocCounterTestInitial extends BlocCounterTestState {}

class BlocCounterLoading extends BlocCounterTestState {}

class BlocCounterTestCounter extends BlocCounterTestState {
  final int counter;

  const BlocCounterTestCounter(this.counter);

  @override
  List<Object> get props => [counter];
}
