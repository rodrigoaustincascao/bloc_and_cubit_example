import 'package:counter_bloc_example/page_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc_example/page_bloc/counter_bloc_page.dart';
import 'package:counter_bloc_example/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
          create: (_) => CounterBloc(),
          child: CounterBlocPage(),
        ),
      },
      home: const HomePage(),
    );
  }
}
