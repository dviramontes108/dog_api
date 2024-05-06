import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/repository/dogs_repository.dart';
import 'package:doc_ceo_api/view/dogs_detail_view.dart';
import 'package:doc_ceo_api/view/dogs_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DogsRepository dogsRepo = DogsRepository();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: dogsRepo,
        ),
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (context) => DogsBloc(
                dogsRepository: context.read<DogsRepository>(),
              )..add(const DogsInitEvent()),
            ),
          ],
          child: MaterialApp.router(
            title: 'Dogs Api',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: GoRouter(
              routes: <RouteBase>[
                GoRoute(
                  path: DogsListView.path,
                  builder: (BuildContext context, GoRouterState state) {
                    return const DogsListView();
                  },
                ),
                GoRoute(
                  path: DogsDetailView.path,
                  builder: (BuildContext context, GoRouterState state) {
                    return const DogsDetailView();
                  },
                ),
              ],
            ),
          )),
    );
  }
}
