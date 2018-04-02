//
//  StartViewController.swift
//  RockPaperScissorsGame
//
//  Created by jack on 4/1/18.
//  Copyright © 2018 HCCS. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        gameInit()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func gameInit(){
        Game.humanWinTimes = 0
        Game.humanLoseTimes = 0
        Game.drawTimes = 0
        Game.aiWinTimes = 0
        Game.aiLoseTimes = 0
        Game.drawTimes = 0
        Game.gameTimes = 0
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
