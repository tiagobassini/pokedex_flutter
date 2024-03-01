import 'package:flutter/material.dart';
import 'package:pokedex/common/repositories/pokemon_repository.dart';
import 'package:dio/dio.dart';
import 'package:pokedex/features/pokedex/route.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red

        
      ),
      home: PokedexRoutes(repository: PokemonRepository(dio: Dio()),)
      
      //HomeContainer(repository: PokemonRepository(dio: Dio())),
    );
  }
}
