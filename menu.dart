
import 'dart:io';
import 'data.dart';
import 'game_flow.dart';

void menu(){
  print('1. Start Game\n2. Exit');
  stdout.write('Choose an option: ');
  String choice = stdin.readLineSync()??'';
  if(choice == '1'){
    print('Starting game...');
    startGame();
  } else if (choice == '2'){
    print('Exiting game...');
    exit(0);
  } else {
    print('Invalid choice. Please choose either 1 or 2.');
    menu();
  }
}

void startGame(){
      print('----- Welcome to Tic Tac Toe! -----');
  if(gameRound == 1){
stdout.write('Enter player 1 name: ');
    player1 = stdin.readLineSync()??'';
  stdout.write('Enter player 2 name: ');
    player2 = stdin.readLineSync()??'';
  while(true){
      stdout.write("$player1 choose your symbol (x/o): ");
      symbol1 = (stdin.readLineSync()??'').toLowerCase();
    if(symbol1 == 'x' || symbol1 == 'o'){
        symbol2 = (symbol1 == 'x') ? 'o' : 'x';
      print('$player1 is $symbol1 and $player2 is $symbol2');
      break;
    } else {
      stdout.write('Invalid symbol. Please choose either x or o.\n');
    }
  }
  }
  playGame();
}