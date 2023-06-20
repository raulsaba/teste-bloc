import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_counter_test_bloc.dart';

class BlocCounterBlocProvider extends StatelessWidget {
  const BlocCounterBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocCounterTestBloc(),
      child: const BlocCounterTestPage(),
    );
  }
}

class BlocCounterTestPage extends StatelessWidget {
  const BlocCounterTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Counter')),
      body: BlocBuilder<BlocCounterTestBloc, BlocCounterTestState>(
        builder: (context, state) {
          BlocCounterTestBloc bloc = context.read<BlocCounterTestBloc>();
          if (state is BlocCounterLoading) {
            return const Center(child: Text('Initializing Counter ...'));
          }
          if (state is BlocCounterTestCounter) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text('${state.counter}')),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Ink(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            bloc.add(IncrementEvent(counter: state.counter));
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Ink(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            bloc.add(DecrementEvent(counter: state.counter));
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
