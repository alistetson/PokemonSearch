import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemonsearch/pokemondetail/pokemondetail.dart';
import 'package:pokemonsearch/pokemonlist/cubit/pokemonlist_cubit.dart';
import 'package:pokemonsearch/pokemonlist/cubit/pokemonlist_states.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/pokeapi_repo.dart';

class PokemonListSuccess extends StatelessWidget {
  const PokemonListSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListCubit, PokemonListState>(
      builder: (context, state) {
        if (state.status != .success) return SizedBox.shrink();

        return Column(
          children: state.pokemons
              .map((pokemon) => PokeMonListTile(pokemon))
              .toList(),
        );
      },
    );
  }
}

class PokeMonListTile extends StatelessWidget {
  const PokeMonListTile(this.pokemon, {super.key});
  final dynamic pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) =>
                  PokemonDetailCubit(context.read<PokeApiRepo>(), pokemon.name),
              child: PokemondetailView(),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
        child: Row(
          children: [
            SizedBox(width: 5),
            Text(pokemon.name),
            SizedBox(width: 10),
            Text(pokemon.url),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
