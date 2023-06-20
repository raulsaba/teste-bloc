import 'package:equatable/equatable.dart';

class CounterModel extends Equatable {
  final int counter;

  const CounterModel({required this.counter});

  @override
  List<Object?> get props => [counter];
}
