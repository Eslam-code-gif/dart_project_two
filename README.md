-----

# Tic-Tac-Toe CLI Game

A classic, two-player Tic-Tac-Toe game that runs in the command line, built with Dart. It keeps track of scores across multiple rounds and provides a clean, user-friendly interface.

## Features

  - **Two-Player Mode**: Play against a friend on the same machine.
  - **Score Tracking**: The game keeps track of each player's score for the entire session.
  - **Persistent Players**: Player names are entered once and remembered for subsequent rounds.
  - **Interactive Gameplay**: A clear and formatted game board is displayed after every move.
  - **Input Validation**: Prevents players from choosing invalid positions or overwriting existing moves.
  - **Modular Code**: The project is organized into separate files for data, display, game logic, and menu handling.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You need to have the Dart SDK installed on your machine. You can find installation instructions on the [official Dart website](https://dart.dev/get-dart).

### Running the Game

1.  Clone the repository to your local machine:
    ```sh
    git clone <your-repository-url>
    ```
2.  Navigate to the project directory:
    ```sh
    cd <your-repository-name>
    ```
3.  Run the application from the command line:
    ```sh
    dart run main.dart
    ```

## How to Play

1.  After running the application, you will be presented with the main menu. Choose option `1` to start the game.
2.  In the first round, you will be prompted to enter the names for Player 1 and Player 2.
3.  Player 1 will choose a symbol ('x' or 'o'). Player 2 will automatically be assigned the other symbol.
4.  Players take turns entering a number from 1 to 9 corresponding to the position on the board where they want to place their symbol.
5.  The game board and scores are displayed after each turn.
6.  The game ends when a player wins or when it's a draw. The result is announced, scores are updated, and you are returned to the main menu.
7.  From the menu, you can start another round (with the same players and updated scores) or exit the game.

## Project Structure

The project is organized into several files to separate concerns:

  - `main.dart`: The main entry point of the application which launches the menu.
  - `menu.dart`: Handles the main menu logic and the initial game setup where players enter their names and choose symbols.
  - `game_flow.dart`: Contains the core game loop, turn management, win/draw condition checks, and board update logic.
  - `display.dart`: Responsible for all console output related to the game board and player/score data.
  - `data.dart`: Acts as a central store for the game's state, including the board data, player information, scores, and turn counters.
  - [cite\_start]`LICENSE`: Contains the MIT license for the project. [cite: 1]

## License

[cite\_start]This project is licensed under the MIT License. [cite: 1] See the `LICENSE` file for more details.

[cite\_start]Copyright (c) 2025 Abdelrahim mohamed abdelrahim ibrahim (Eslam-code-gif) [cite: 1]

[cite\_start]The software is provided "as is", without any kind of warranty. [cite: 2] [cite\_start]The authors or copyright holders are not liable for any claim or damages arising from the use of this software. [cite: 3]
