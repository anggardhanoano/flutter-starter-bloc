import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterkit/screen/home/subscreen/counter/cubit/counter_cubit.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text(
                '$state',
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                child: new Text("Add"),
                key: Key("increment"),
              ),
              ElevatedButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: new Text(
                  "Subtract",
                ),
                key: Key("decrement"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
