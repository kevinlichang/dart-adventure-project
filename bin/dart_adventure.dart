import 'dart:developer';

import 'package:dart_adventure/dart_adventure.dart' as dart_adventure;
import 'dart:io';

void main(List<String> arguments) {
  print('Hello! Welcome to the Solar System!\n'
      'Enter your name:');

  final name = stdin.readLineSync();

  print('Hello $name.\n'
      'Let\'s go on an adventure\n'
      'Do you want to go to a random planet?');

  var user_input;

  while (user_input != 'Y' && user_input != 'N') {
    user_input = stdin.readLineSync();

    if (user_input == 'Y') {
      print('yes');
    } else if (user_input == 'N') {
      print('No');
    } else {
      print('Sorry, that answer is invalid. Try again!');
    }
  }
}
