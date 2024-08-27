
import 'package:counter/ounter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterProvider>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () =>
                        context.read<CounterProvider>().increment(),
                    child: const Icon(Icons.add_circle_outline)),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => context.read<CounterProvider>().decrement(),
                  child: const Icon(Icons.remove_circle_outline_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}