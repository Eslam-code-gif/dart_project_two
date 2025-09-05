
import 'data.dart';

void displayData(){
  print('$player1 ($symbol1) - Score: $player1Score\t$player2 ($symbol2) - Score: $player2Score');
  print('G $gameRound');
  
}
void displayBoard() {
  print('''
╔═══════╦═══════╦═══════╗
║       ║       ║       ║
║   ${boardData[0]}   ║   ${boardData[1]}   ║   ${boardData[2]}   ║
║       ║       ║       ║
╠═══════╬═══════╬═══════╣
║       ║       ║       ║
║   ${boardData[3]}   ║   ${boardData[4]}   ║   ${boardData[5]}   ║
║       ║       ║       ║
╠═══════╬═══════╬═══════╣
║       ║       ║       ║
║   ${boardData[6]}   ║   ${boardData[7]}   ║   ${boardData[8]}   ║
║       ║       ║       ║
╚═══════╩═══════╩═══════╝
''');
}
