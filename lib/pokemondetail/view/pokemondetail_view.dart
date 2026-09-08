import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemonsearch/pokemondetail/cubit/pokemondetail_cubit.dart';
import 'package:pokemonsearch/pokemondetail/cubit/pokemondetail_state.dart';

class PokemondetailView extends StatelessWidget {
  const PokemondetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailCubit, PokemonDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(state.pokemon?.name ?? '')),
          body: Container(),
        );
      },
    );
  }
}
