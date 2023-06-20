part of 'counter_test_cubit.dart';

abstract class CubitCounterTestState extends Equatable {
  const CubitCounterTestState(this.counter);

  final int counter;

  @override
  List<Object> get props => [counter];
}

class CubitCounterValue extends CubitCounterTestState {
  const CubitCounterValue(super.counter);
}
