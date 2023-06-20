import 'package:flutter/material.dart';
import 'cubit_test/cubit_counter_test_page.dart';

import 'bloc_test/bloc_cubit_page.dart';
import 'bloc_with_model_test/bloc_with_model_test_page.dart';
import 'cubit_example/example_cubit_counter_page.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterHomePage(),
    );
  }
}

class CounterHomePage extends StatelessWidget {
  const CounterHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit/Bloc Test")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ExampleCounterBlocProvider()));
              },
              textColor: Colors.white,
              child: const Text("Cubit Example"),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const CubitCounterTestBlocProvider()));
              },
              textColor: Colors.white,
              child: const Text("Cubit Test"),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BlocCounterBlocProvider()));
              },
              textColor: Colors.white,
              child: const Text("Bloc Test"),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const BlocWithModelTestBlocProvider()));
              },
              textColor: Colors.white,
              child: const Text("Bloc With Model"),
            ),
          ],
        ),
      ),
    );
  }
}
