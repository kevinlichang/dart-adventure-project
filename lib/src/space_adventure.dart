import 'dart:io';
import 'planetary_system.dart';

class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({required this.planetarySystem});

  void start() {
    printGreeting();
    printIntro(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure');
    travel(
      promptForRandomOrSpecificDestination(
        'Would you like to visit a planet through random choice? (Y or N)'
      )
    );
  }

  void printGreeting() {
    print('Hello! Welcome to the ${planetarySystem.name}.');
    print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }


  void printIntro(String? name) {
    print('Nice to meet you, $name. My name is Cortana.');
  }


  String? responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();

  }

  void travelToRandomPlanet() {
    print('OK, traveling to BLANK');
  }

  void travelTo(String? planetName) {
    print(
      'Traveling to $planetName\n'
      'Arrived at $planetName. Yay'
    );
  }

  void travel(bool randomDestination) {
    if(randomDestination) {
      travelToRandomPlanet();
    } else {
      travelTo(responseToPrompt('Enter the planet you would like to visit.'));
    }
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