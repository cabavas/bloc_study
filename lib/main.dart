import 'package:bloc_study/page_bloc/bloc/counter_bloc.dart';
import 'package:bloc_study/page_bloc/counter_bloc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';
import 'page_cubit/counter_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        // '/cubit': (_) => BlocProvider(create: (_) => CounterCubit(),),
      },
      home: const HomePage(),
    );
  }
}
