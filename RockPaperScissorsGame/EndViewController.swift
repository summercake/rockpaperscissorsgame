//
//  EndViewController.swift
//  RockPaperScissorsGame
//
//  Created by jack on 4/1/18.
//  Copyright © 2018 HCCS. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var playerWinNumLabel: UILabel!
    
    @IBOutlet weak var playerLoseNumLabel: UILabel!
    
    @IBOutlet weak var playerDrawNumLabel: UILabel!
    
    @IBOutlet weak var aiWinNumLabel: UILabel!
    
    @IBOutlet weak var aiLoseNumLabel: UILabel!
    
    @IBOutlet weak var aiDrawNumLabel: UILabel!
    
    @IBOutlet weak var totalPlayedNumLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showFinalResult()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showFinalResult(){
        playerWinNumLabel.text = String(Game.humanWinTimes)
        playerLoseNumLabel.text = String(Game.humanLoseTimes)
        playerDrawNumLabel.text = String(Game.drawTimes)
        aiWinNumLabel.text = String(Game.aiWinTimes)
        aiLoseNumLabel.text = String(Game.aiLoseTimes)
        aiDrawNumLabel.text = String(Game.drawTimes)
        totalPlayedNumLabel.text = "Total Round : " + String(Game.gameTimes)
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
