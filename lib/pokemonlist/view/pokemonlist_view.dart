import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemonsearch/pokemonlist/cubit/pokemonlist_cubit.dart';
import 'package:pokemonsearch/pokemonlist/cubit/pokemonlist_states.dart';
import 'package:pokemonsearch/pokemonlist/widgets/widgets.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello There')),
      body: BlocBuilder<PokemonListCubit, PokemonListState>(
        builder: (context, state) {
          return switch (state.status) {
            .intial => Container(),
            .loading => Center(child: CircularProgressIndicator()),
            .success => PokemonListSuccess(),
            .failure => PokemonListFailure(),
          };
        },
      ),
    );
  }
}
