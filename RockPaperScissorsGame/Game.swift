//
//  Game.swift
//  RockPaperScissorsGame
//
//  Created by jack on 4/1/18.
//  Copyright © 2018 HCCS. All rights reserved.
//

import Foundation

class Game {
    static var gameTimes:Int = 0;
    static var humanChoice:Sign = Sign.paper;
    static var aiChoice:Sign = Sign.paper;
    let randomNum:UInt32;   //generate numbers between 0-2
    
    static var humanResult:GameState = GameState.lose;
    static var humanWinTimes:Int = 0;
    static var humanLoseTimes:Int = 0;
    
    static var aiResult:GameState = GameState.lose;
    static var aiWinTimes:Int = 0;
    static var aiLoseTimes:Int = 0;
    
    static var drawTimes:Int = 0;
    
    init(human: Sign) {
        Game.humanChoice = human;
        self.randomNum = arc4random_uniform(UInt32(3))
        if randomNum == 0{
            Game.aiChoice = Sign.paper
        }else if randomNum == 1{
            Game.aiChoice = Sign.rock
        }else{
            Game.aiChoice = Sign.scissors
        }
        self.gameResult()
        Game.gameTimes += 1
    }
    
    func aiSelection (){
        if randomNum == 0{
            Game.aiChoice = Sign.paper
        }else if randomNum == 1{
            Game.aiChoice = Sign.rock
        }else{
            Game.aiChoice = Sign.scissors
        }
    }
    
    func gameResult() {
        if Game.humanChoice == Game.aiChoice {
            Game.humanResult = GameState.draw
            Game.aiResult = GameState.draw
            Game.drawTimes += 1
        }else{
            if Game.humanChoice == Sign.paper {
                if Game.aiChoice == Sign.scissors{
                    Game.humanResult = GameState.lose
                    Game.aiResult = GameState.win
                    Game.aiWinTimes += 1
                    Game.humanLoseTimes += 1
                }
                if Game.aiChoice == Sign.rock{
                    Game.humanResult = GameState.win
                    Game.aiResult = GameState.lose
                    Game.aiLoseTimes += 1
                    Game.humanWinTimes += 1
                }
            }
            if Game.humanChoice == Sign.rock {
                if Game.aiChoice == Sign.paper{
                    Game.humanResult = GameState.lose
                    Game.aiResult = GameState.win
                    Game.aiWinTimes += 1
                    Game.humanLoseTimes += 1
                }
                if Game.aiChoice == Sign.scissors{
                    Game.humanResult = GameState.win
                    Game.aiResult = GameState.lose
                    Game.aiLoseTimes += 1
                    Game.humanWinTimes += 1
                }
            }
            if Game.humanChoice == Sign.scissors {
                if Game.aiChoice == Sign.rock{
                    Game.humanResult = GameState.lose
                    Game.aiResult = GameState.win
                    Game.aiWinTimes += 1
                    Game.humanLoseTimes += 1
                }
                if Game.aiChoice == Sign.paper{
                    Game.humanResult = GameState.win
                    Game.aiResult = GameState.lose
                    Game.aiLoseTimes += 1
                    Game.humanWinTimes += 1
                }
            }
        }
    }
}
