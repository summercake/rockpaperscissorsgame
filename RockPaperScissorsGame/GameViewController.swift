//
//  GameViewController.swift
//  RockPaperScissorsGame
//
//  Created by jack on 4/1/18.
//  Copyright © 2018 HCCS. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBAction func ScissorsResult(_ sender: Any) {
        var game:Game = Game(human: Sign.scissors)
    }
    @IBAction func PaperResult(_ sender: Any) {
        var game:Game = Game(human: Sign.paper)
    }
    @IBAction func RockResult(_ sender: Any) {
        var game:Game = Game(human: Sign.rock)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
