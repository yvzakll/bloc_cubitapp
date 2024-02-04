import 'package:bloc_cubitapp/bloc/counter_bloc.dart';
import 'package:bloc_cubitapp/bloc_main.dart';
import 'package:bloc_cubitapp/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePageWithBloc(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePageCubit extends StatelessWidget {
  MyHomePageCubit({super.key, required this.title});

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
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterCubitState>(
              builder: (context, CounterCubitState state) {
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
              context.read<CounterCubit>().arttir();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().azalt();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
