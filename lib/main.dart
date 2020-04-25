import 'package:eye_cinema_app/routes.dart';
import 'package:eye_cinema_app/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
        create: (BuildContext context) => AuthBloc(),
        child: BlocProvider<PrefBloc>(
          create: (BuildContext context) => PrefBloc(),
            child: MaterialApp(
              title: 'Eye Cinema App',
              theme: appTheme(),
              initialRoute: '/',
              routes: routes,
            )
        ),
    );
  }
}