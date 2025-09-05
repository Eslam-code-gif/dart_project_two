
import 'dart:io';
import 'data.dart';
import 'display.dart';
import 'menu.dart';

void playGame(){
  while(true){
    displayData();
    displayBoard();
    String currentPlayer = (turn % 2 == 0) ? player1 : player2;
    String currentSymbol = (turn % 2 == 0) ? symbol1 : symbol2;
    while(true){
      stdout.write('$currentPlayer ($currentSymbol), choose your position (1-9): ');
    int position = int.tryParse(stdin.readLineSync()??'')??0;
    updateBoard(position: position, symbol: currentSymbol);
    if(position >=1 && position <=9){
      break;
    }
    }
    turn++;
    if(checkWin(currentSymbol)){
      displayBoard();
      print('----- $currentPlayer wins! 🏆 -----');
      gameRound++;
      if(currentPlayer == player1){
        player1Score++;
      } else {
        player2Score++;
      }
      resetBoard();
            print('Returning to menu...');
      menu();
      break;
    } else if(turn == 9){
      displayData();
      displayBoard();
      print('----- It\'s a draw! 🤝 -----');
      gameRound++;
      resetBoard();
            print('Returning to menu...');
      menu();
      break;
  }
  }
}
void updateBoard({required int position,required String symbol}) {
  if (position < 1 || position > 9) {
    print('Invalid position. Please choose a position between 1 and 9.');
    return;
  }
  if (boardData[position -1] == 'x' || boardData[position -1] == 'o') {
    print('Position already taken. Please choose another position.');
    return;
  }
  boardData[position-1] = symbol;
}
bool checkWin(String symbol) {
  for (int i = 0; i < 3; i++) {
    if (boardData[i * 3] == symbol && boardData[i * 3 + 1] == symbol && boardData[i * 3 + 2] == symbol) {
      return true; //* Row win
    }
    if (boardData[i] == symbol && boardData[i + 3] == symbol && boardData[i + 6] == symbol) {
      return true; //* Column win
    }
  }
  if (boardData[0] == symbol && boardData[4] == symbol && boardData[8] == symbol) {
    return true; //* Diagonal win
  }
  if (boardData[2] == symbol && boardData[4] == symbol && boardData[6] == symbol) {
    return true; //* Diagonal win
  }
  return false;
}
void resetBoard() {
  boardData = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9'
  ];
  turn = 0;
}

