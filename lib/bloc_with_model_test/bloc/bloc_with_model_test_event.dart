part of 'bloc_with_model_test_bloc.dart';

abstract class BlocWithModelTestEvent extends Equatable {
  const BlocWithModelTestEvent({required this.counterValue});

  final int counterValue;

  @override
  List<Object> get props => [];
}

class InitModelCounter extends BlocWithModelTestEvent {
  const InitModelCounter({super.counterValue = 0});
}

class IncrementModelEvent extends BlocWithModelTestEvent {
  const IncrementModelEvent({required super.counterValue});
}

class DecrementModelEvent extends BlocWithModelTestEvent {
  const DecrementModelEvent({required super.counterValue});
}
