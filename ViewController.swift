//
//  ViewController.swift
//  Roshambo
//
//  Created by Julia Will on 18.06.15.
//  Copyright (c) 2015 Julia Will. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func paperPressed(sender: AnyObject) {
        //storyboard
        
    }
    
    @IBAction func scissorsPressed(sender: AnyObject) {
        //code & storyboard
        performSegueWithIdentifier("showResultsScissors", sender: self)
    }

    @IBAction func rockPressed(sender: AnyObject) {
        //code
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("resultsView") as! ResultsViewController
        controller.userSelection = "rock"
        presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showResultsScissors" {
            let controller = segue.destinationViewController as! ResultsViewController
            controller.userSelection = "scissors"
        }
        if segue.identifier == "showResultsPaper" {
            let controller = segue.destinationViewController as! ResultsViewController
            controller.userSelection = "paper"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

