import 'package:dart_adventure/dart_adventure.dart';
import 'package:dart_adventure/src/planetary_system.dart';

void main(List<String> arguments) {
  // final jsonFile = File('planetarySystem.json').readAsLinesSync();

  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: 'Solar System', planets: [
        Planet(
          name: 'Mercury', 
          description: 'AYAYA'
        )
      ]
    )
  ).start();
}

