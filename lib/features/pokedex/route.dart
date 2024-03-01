


import 'package:flutter/material.dart';
import 'package:pokedex/common/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokedex/screens/details/container/datail_container.dart';
import 'package:pokedex/features/pokedex/screens/home/container/home_container.dart';

class PokedexRoutes extends StatelessWidget {
  const PokedexRoutes({super.key, required this.repository});
  final PokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if(settings.name =='/'){
          return MaterialPageRoute(
            builder: (context){
              return HomeContainer(
                repository: repository,
                onItemTap: (route , arguments ) { 

                  Navigator.of(context).pushNamed(route, arguments: arguments);

                },);
            }
          );
        }
        if(settings.name =='/details'){
          return MaterialPageRoute(
            builder: (context){
              return DetailContainer(
                repository: repository,
                arguments: (settings.arguments as DetailArguments),
                );
            }
          );
        }
      },

    );
  }
}