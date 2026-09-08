import 'dart:convert';

import 'package:http/http.dart';
import 'package:pokemonsearch/repo/pokeapi_client/src/models/pokemon.dart';

class PokeApiClient {
  final http = Client();
  static const _baseUrl = 'https://pokeapi.co/api/v2/pokemon/';

  Future<List<NamedApiResource>?> getAllPokemonResources() async {
    final response = await http.get((Uri.parse(_baseUrl)));
    if (response.statusCode != 200) return null;

    final jsonDecoded = jsonDecode(response.body);
    if (jsonDecoded == null) return null;

    final List<NamedApiResource> list = [];
    final rawResults = List.from(jsonDecoded['results']);
    for (var raw in rawResults) {
      list.add(NamedApiResource.fromJson(raw));
    }
    return list;
  }

  Future<Pokemon?> getPokemonDetail(String id) async {
    final response = await http.get((Uri.parse(_baseUrl + id)));
    if (response.statusCode != 200) return null;

    final jsonDecoded = jsonDecode(response.body);
    if (jsonDecoded == null) return null;
    final pokemon = Pokemon.fromJson(jsonDecoded);
    return pokemon;
  }
}
