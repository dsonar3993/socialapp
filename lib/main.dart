import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/widgets/app_navigator.dart';
import 'package:socialapp/cubits/nav_cubit.dart';
import 'package:socialapp/cubits/posts_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(providers: [
      BlocProvider(create: (context) => NavCubit()),
      BlocProvider(
        create: (context) => PostsBloc()..add(LoadPostsEvent()),
      )
    ], child: AppNavigator()));
  }
}
