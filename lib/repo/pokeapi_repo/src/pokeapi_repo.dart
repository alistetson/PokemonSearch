import 'package:pokemonsearch/repo/pokeapi_client/pokeapi_client.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/src/models/pokemon.dart';

class PokeApiRepo {
  PokeApiRepo({PokeApiClient? pokemonClient})
    : _pokeApiClient = pokemonClient ?? PokeApiClient();

  final PokeApiClient _pokeApiClient;

  Future<Pokemon?> getPokemon(String id) async {
    final rawPokemon = await _pokeApiClient.getPokemonDetail(id);
    if (rawPokemon == null) return null;

    final pokemon = Pokemon(
      id: rawPokemon.id,
      name: rawPokemon.name,
      baseExperience: rawPokemon.baseExperience,
      height: rawPokemon.height,
      isDefault: rawPokemon.isDefault,
      order: rawPokemon.order,
      weight: rawPokemon.weight,
    );
    return pokemon;
  }
}
