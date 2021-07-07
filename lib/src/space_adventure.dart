import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';
import 'planet.dart';

class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({required this.planetarySystem});

  void start() {
    printGreeting();
    printIntro(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure');
    if (planetarySystem.hasPlanets) {
      travel(
        promptForRandomOrSpecificDestination(
          'Would you like to visit a planet through random choice? (Y or N)'
        )
      );
    } else {
      print('There are no planets to explore.');
    }
  }

  void printGreeting() {
    print('Hello! Welcome to the ${planetarySystem.name}.');
    print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }


  void printIntro(String? name) {
    print('Nice to meet you, $name. My name is Cortana.');
  }


  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync()!;

  }

  void travelTo(Planet planet) {
    print('Traveling to ${planet.name}');
    print('Arrived at ${planet.name}. ${planet.description}');
  }

  void travel(bool randomDestination) {
    Planet planet;
    if(randomDestination) {
      planet = planetarySystem.randomPlanet();
    } else {
      planet = planetarySystem.planetWithName(
        responseToPrompt('Enter the planet you would like to visit.')
      );
    }
    travelTo(planet);
  }

  bool promptForRandomOrSpecificDestination(String prompt) {
    String? user_input;
    while (user_input != 'Y' && user_input != 'N') {
      user_input = responseToPrompt(prompt);

      if (user_input == 'Y') {
        return true;
      } else if (user_input == 'N') {
        return false;

      } else {
        print('Sorry, that answer is invalid. Try again!');
      }
    }
    return false;
  }
}