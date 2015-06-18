//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Julia Will on 18.06.15.
//  Copyright (c) 2015 Julia Will. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let possibleChoices = ["rock", "paper", "scissors"]
    
    var userSelection: String!
    
    func getWinner() {
        let randomIndex = Int(arc4random_uniform(UInt32(possibleChoices.count)))
        let opponentSelection = possibleChoices[randomIndex]
        
        if opponentSelection == userSelection {
            message.text = "It's a tie!"
            imageView.image = UIImage(named: "itsATie")
            return
        }
        
        
        var outcome: Bool = false
        var result: String = ""
        var messages: [String: String] = ["PaperCoversRock":"Paper covers Rock", "RockCrushesScissors": "Rock crushes Scissors", "ScissorsCutPaper":"Scissors cut Paper"]
        
        switch userSelection {
            case "rock":
                println("rock vs \(opponentSelection)")
                if opponentSelection == "Paper" {
                    outcome = true
                    result = "PaperCoversRock"
                } else {
                    outcome = false
                    result = "RockCrushesScissors"
                break
            }
            case "paper":
                println("paper vs \(opponentSelection)")
                if opponentSelection == "rock" {
                    outcome = true
                    result = "PaperCoversRock"
                } else {
                    outcome = false
                    result = "ScissorsCutPaper"
                }
                break
            case "scissors":
                println("scissors vs \(opponentSelection)")
                if opponentSelection == "rock" {
                    outcome = true
                    result = "ScissorsCutPaper"
                } else {
                    outcome = false
                    result = "RockCrushesScissors"
                }
                break
            default:
                println("No Selection")
            
            
        }
        message.text = outcome ? "You win! " : "You loose! "
        message.text = message.text! + messages[result]!
        imageView.image = UIImage(named: result)
    }
    
    override func viewDidAppear(animated: Bool) {
        getWinner()
    }

}
