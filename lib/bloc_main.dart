import 'package:bloc_cubitapp/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageWithBloc extends StatelessWidget {
  MyHomePageWithBloc({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    print("adsddda");
    return Scaffold(
      appBar: AppBar(title: Text("cubit")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterBlocState>(
              builder: (context, state) {
                return Text(state.sayac.toString());
              },
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(ArttirCounterEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(AzaltCounterEvent());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
