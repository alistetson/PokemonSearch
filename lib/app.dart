import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemonsearch/pokemonlist/pokemonlist.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/src/pokeapi_repo.dart';

class PokeMonApp extends StatelessWidget {
  const PokeMonApp({super.key});

  @override
  Widget build(BuildContext context) {
    // theme: ThemeData(
    //   appBarTheme: const AppBarTheme(
    //     backgroundColor: Colors.transparent,
    //     elevation: 0,
    //   ),
    //   colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
    //   textTheme: GoogleFonts.rajdhaniTextTheme(),
    // ),
    return RepositoryProvider(
      create: (_) => PokeApiRepo(),
      dispose: (repo) => repo.close(),
      child: BlocProvider(
        create: (context) => PokemonListCubit(context.read<PokeApiRepo>()),
        child: MaterialApp(home: PokemonListView()),
      ),
    );
  }
}
