import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/pokeapi_repo.dart';

part 'pokemanlist_states.g.dart';

enum PokemonListStatus { intial, loading, success, failure }

@JsonSerializable()
final class PokemonListState extends Equatable {
  final PokemonListStatus status;
  final List<Pokemon> pokemons;

  const PokemonListState({this.status = .intial, this.pokemons = const []});

  factory PokemonListState.fromJson(Map<String, dynamic> json) =>
      _$PokemonListStateFromJson(json);

  PokemonListState copyWith({
    PokemonListStatus? status,
    List<Pokemon>? pokemons,
  }) {
    return PokemonListState(
      status: status ?? this.status,
      pokemons: pokemons ?? this.pokemons,
    );
  }

  Map<String, dynamic> toJson() => _$PokemonListStateToJson(this);

  @override
  List<Object?> get props => [status, pokemons];
}
