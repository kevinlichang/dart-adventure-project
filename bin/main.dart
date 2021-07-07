import 'dart:io';
import 'package:dart_adventure/dart_adventure.dart';
import 'package:dart_adventure/src/planetary_system.dart';

void main(List<String> arguments) {
  final jsonFile = File('planetarySystem.json').readAsLinesSync();

  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: 'Solar System', 
      planets: mockPlanets()
    )
  ).start();
}

List<Planet> mockPlanets() {
  return [
    Planet(
      name: 'Mercury',
      description: 'Description for Mercury'
    ),
    Planet(
      name: 'Venus', 
      description: 'Desc for Venus'
    ),
    Planet(
      name: 'Earth',
      description: 'Description for Earth AYAYA'
    )    
  ];
}