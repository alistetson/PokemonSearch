import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokemonsearch/pokemonlist/cubit/pokemonlist_states.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/pokeapi_repo.dart';

class PokemonListCubit extends HydratedCubit<PokemonListState> {
  final PokeApiRepo _pokeApiRepo;
  PokemonListCubit(this._pokeApiRepo) : super(PokemonListState()) {
    getPokeManList();
  }

  void getPokeManList() async {
    emit(state.copyWith(status: .loading));

    final list = await _pokeApiRepo.getAllList();
    if (list == null) {
      emit(state.copyWith(status: .failure));
      return;
    }

    emit(state.copyWith(status: .success, pokemons: list));
  }

  @override
  PokemonListState? fromJson(Map<String, dynamic> json) {
    return PokemonListState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PokemonListState state) {
    return state.toJson();
  }
}
