//
//  ContentView.swift
//  Tic-Tac-Toe
//
//  Created by Aditya Gaba on 22/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentPlayer: Player = .x
    @State private var board: [Player?] = Array(repeating: nil, count: 9)
    @State private var backgroundColor: Color = Color.blue // Initial background color
    @State private var showingWinAlert = false
    @State private var winMessage = ""
    @State private var winCombination: [Int]? = nil // Winning combination of cell indices

    var body: some View {
        ZStack {
            // Animated background gradient
            LinearGradient(gradient: Gradient(colors: [backgroundColor, .yellow]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all) // Fill the entire screen

            VStack {
                Text("Tic Tac Toe")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 200)

                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                    ForEach(0..<board.count, id: \.self) { index in
                        Button(action: { makeMove(at: index) }) {
                            Text(board[index]?.rawValue ?? " ")
                                .font(.system(size: 80))
                                .frame(width: 100, height: 100)
                                .foregroundColor(board[index] == .x ? Color.red : Color.green) // Set the color based on the player
                                .background(getCellColor(for: index))
                                .cornerRadius(10)
                        }
                    }
                }

                Spacer() // Expand to fill the remaining space

                Button(action: resetGame) {
                    Text("Reset Game")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .onAppear {
            resetGame()
        }
        .alert(isPresented: $showingWinAlert) {
            Alert(title: Text("Congratulations!"),
                  message: Text(winMessage),
                  dismissButton: .default(Text("OK")) {
                      resetGame()
                  })
        }
    }

    private func makeMove(at index: Int) {
        guard board[index] == nil else { return }
        board[index] = currentPlayer
        if checkWin() {
            winMessage = "\(currentPlayer.rawValue) wins!"
            showingWinAlert = true
            winCombination = getWinCombination()
        } else if checkDraw() {
            winMessage = "It's a draw!"
            showingWinAlert = true
            winCombination = nil
        } else {
            currentPlayer = currentPlayer == .x ? .o : .x
        }

        // Change the background color when making a move (optional)
        withAnimation {
            backgroundColor = currentPlayer == .x ? Color.purple : Color.red
        }
    }

    private func checkWin() -> Bool {
        // Check all possible win conditions
        let winConditions: [[Int]] = [
            [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
            [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
            [0, 4, 8], [2, 4, 6]             // Diagonals
        ]

        for condition in winConditions {
            if let player = board[condition[0]], board[condition[1]] == player, board[condition[2]] == player {
                return true
            }
        }
        return false
    }

    private func checkDraw() -> Bool {
        if !board.contains(nil) && !checkWin() {
            return true
        }
        return false
    }

    private func resetGame() {
        board = Array(repeating: nil, count: 9)
        currentPlayer = .x
        winCombination = nil
        // Reset the background color when resetting the game (optional)
        withAnimation {
            backgroundColor = Color.blue
        }
    }

    private func getCellColor(for index: Int) -> Color {
        if let winCombination = winCombination, winCombination.contains(index) {
            return Color.yellow.opacity(0.6)
        } else {
            return Color.gray.opacity(0.3)
        }
    }

    private func getWinCombination() -> [Int]? {
        // Get the winning combination of cell indices
        let winConditions: [[Int]] = [
            [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
            [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
            [0, 4, 8], [2, 4, 6]             // Diagonals
        ]

        for condition in winConditions {
            if let player = board[condition[0]], board[condition[1]] == player, board[condition[2]] == player {
                return condition
            }
        }
        return nil
    }
}

enum Player: String {
    case x = "X"
    case o = "O"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
