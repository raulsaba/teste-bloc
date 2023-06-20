part of 'bloc_counter_test_bloc.dart';

abstract class BlocCounterTestEvent extends Equatable {
  const BlocCounterTestEvent({required this.counter});

  final int counter;

  @override
  List<Object> get props => [];
}

class InitCounter extends BlocCounterTestEvent {
  const InitCounter({super.counter = 0});
}

class IncrementEvent extends BlocCounterTestEvent {
  const IncrementEvent({required super.counter});
}

class DecrementEvent extends BlocCounterTestEvent {
  const DecrementEvent({required super.counter});
}
