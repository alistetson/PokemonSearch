import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokemonsearch/pokemondetail/cubit/pokemondetail_state.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/pokeapi_repo.dart';

class PokemonDetailCubit extends HydratedCubit<PokemonDetailState> {
  final PokeApiRepo _pokeApiRepo;
  final String _id;

  PokemonDetailCubit(this._pokeApiRepo, this._id)
    : super(PokemonDetailState(status: .intial)) {
    getPokemonDetail();
  }

  Future<void> getPokemonDetail() async {
    emit(state.copyWith(status: .loading));

    final pokemon = await _pokeApiRepo.getPokemon(_id);
    if (pokemon == null) {
      emit(state.copyWith(status: .failure));
      return;
    }
    emit(state.copyWith(status: .success, pokemon: pokemon));
  }

  @override
  PokemonDetailState? fromJson(Map<String, dynamic> json) {
    return PokemonDetailState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PokemonDetailState state) {
    return state.toJson();
  }
}
