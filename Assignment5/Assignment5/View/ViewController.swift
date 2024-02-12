//
//  ViewController.swift
//  Assignment5
//
//  Created by Michael Baljet on 2/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var gameStatus: UILabel!
    
    var gameLogic = GameLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh();
    }
    
    func refresh() {
        gameStatus.text = gameLogic.getQuestionText()
        button1.setTitle(gameLogic.getOptionOneText(), for: .normal)
        button2.setTitle(gameLogic.getOptionTwoText(), for: .normal)
    }

    @IBAction func onOptionOne(_ sender: Any) {
        gameLogic.makeSelection(0)
        refresh()
    }
    
    @IBAction func onOptionTwo(_ sender: Any) {
        gameLogic.makeSelection(1)
        refresh()
    }
    
}

