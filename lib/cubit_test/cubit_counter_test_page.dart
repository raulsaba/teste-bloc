import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_test_cubit.dart';

class CubitCounterTestBlocProvider extends StatelessWidget {
  const CubitCounterTestBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CubitCounterTestCubit(),
      child: const CubitCounterTestPage(),
    );
  }
}

class CubitCounterTestPage extends StatelessWidget {
  const CubitCounterTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cubit Counter Test')),
      body: BlocBuilder<CubitCounterTestCubit, CubitCounterTestState>(
        builder: (context, state) => Center(child: Text('${state.counter}')),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CubitCounterTestCubit>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CubitCounterTestCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
