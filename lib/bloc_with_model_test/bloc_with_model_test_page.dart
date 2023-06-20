import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc_with_model_test_bloc.dart';

class BlocWithModelTestBlocProvider extends StatelessWidget {
  const BlocWithModelTestBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocWithModelTestBloc(),
      child: const BlocWithModelTestPage(),
    );
  }
}

class BlocWithModelTestPage extends StatelessWidget {
  const BlocWithModelTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc With Model Counter')),
      body: BlocBuilder<BlocWithModelTestBloc, BlocWithModelTestState>(
        builder: (context, state) {
          BlocWithModelTestBloc bloc = context.read<BlocWithModelTestBloc>();
          if (state is BlocWithModelLoading) {
            return const Center(child: Text('Initializing Counter ...'));
          }
          if (state is BlocWithModelCounter) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text('${state.counter.counter}')),
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
                            bloc.add(IncrementModelEvent(
                                counterValue: state.counter.counter));
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
                            bloc.add(DecrementModelEvent(
                                counterValue: state.counter.counter));
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
