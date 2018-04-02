//
//  ShowResultViewController.swift
//  RockPaperScissorsGame
//
//  Created by jack on 4/1/18.
//  Copyright © 2018 HCCS. All rights reserved.
//

import UIKit

class ShowResultViewController: UIViewController {
    @IBOutlet weak var playerResultLabel: UILabel!
    @IBOutlet weak var aiResultLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResult()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showResult () {
        if Game.humanChoice == Sign.scissors{
            playerResultLabel.text = "Player : ✌️"
        }
        if Game.humanChoice == Sign.rock {
            playerResultLabel.text = "Player : 👊"
        }
        if Game.humanChoice == Sign.paper {
            playerResultLabel.text = "Player : 🖐"
        }
        if Game.aiChoice == Sign.rock {
            aiResultLabel.text = "AI : 👊"
        }
        if Game.aiChoice == Sign.scissors{
            aiResultLabel.text = "AI : ✌️"
        }
        if Game.aiChoice == Sign.rock {
            aiResultLabel.text = "AI : 👊"
        }
        if Game.humanResult == GameState.win{
            ResultLabel.text = "Result : You Win"
        }
        if Game.humanResult == GameState.lose{
            ResultLabel.text = "Result : You Lose"
        }
        if Game.humanResult == GameState.draw{
            ResultLabel.text = "Result : You Draw"
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
