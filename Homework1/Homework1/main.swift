//
//  main.swift
//  Homework1
//
//  Created by Madina Amankeldinova on 28.03.2023.
//

import Foundation

class player {
    var name: String
    var gameUserChoice:String?
    var point: Int = 0

   
    init(name: String) {
        self.name = name
        
    }
}
enum gameUserChoice{
    case Rock
    case Paper
    case Scissors
}

// Ask the user for their name
print("Enter first player's name: ")
let playerName1:String = readLine() ?? ""
print("Enter second player's name: ")
let playerName2:String = readLine() ?? ""


//create players
let player1 = player(name: playerName1)
let player2 = player(name: playerName2)

func askChoice() {
    print("\(player1.name) enter your game choice (Rock/Paper/Scissors):")
    player1.gameUserChoice = readLine()
    print("\(player2.name) enter your game choice (Rock/Paper/Scissors):")
    player2.gameUserChoice = readLine() 
    
    
    if  player1.gameUserChoice == "Rock" && player2.gameUserChoice == "Paper" {
        print("Winner in this round is \(player2.name) ")
        player2.point+=1
        print("\(player1.point):\(player2.point)")
    } else if player1.gameUserChoice == "Rock" && player2.gameUserChoice == "Scissors" {
        print("Winner in this round is \(player1.name)")
        player1.point+=1
        print("\(player1.point):\(player2.point)")
    } else if player1.gameUserChoice == player2.gameUserChoice {
        print("Draw")
        print("\(player1.point):\(player2.point)")
    } else if player1.gameUserChoice == "Paper" && player2.gameUserChoice == "Scissors" {
        print("Winner in this round is \(player2.name)")
        player2.point+=1
        print("\(player1.point):\(player2.point)")
    } else if player1.gameUserChoice == "Paper" && player2.gameUserChoice == "Rock" {
        print("Winner in this round is \(player1.name)")
        player1.point+=1
        print("\(player1.point):\(player2.point)")
    } else if  player1.gameUserChoice == "Scissors" && player2.gameUserChoice == "Paper" {
        print("Winner in this round is \(player1.name)")
        player1.point+=1
        print("\(player1.point):\(player2.point)")
    } else if player1.gameUserChoice == "Scissors" && player2.gameUserChoice == "Rock" {
        print("Winner in this round is \(player2.name)")
        player2.point+=1
        print("\(player1.point):\(player2.point)")
    }
}

var endGame = false

func checkWinner(){
    
    if player1.point==3{
        print("\(player1.name) is winner")
        endGame = true
    } else if player2.point==3{
        print("\(player2.name) is winner")
        endGame = true
    } else {
        print("_____________")
    }
}

while endGame == false {
    askChoice()
    checkWinner()
}





