//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//
//  Added to by Marwan Alani - 2017
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // Using both code & storyboard to present a new View
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! DiceViewController
        nextController.firstValue = self.randomDiceValue()
        nextController.secondValue = self.randomDiceValue()
    }
    // MARK: Actions
    
    @IBAction func rollTheDice() {
        performSegue(withIdentifier: "rollDice", sender: self)
        
        // ***** Programmatically Created ViewController *****
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
//        controller.firstValue = self.randomDiceValue()
//        controller.secondValue = self.randomDiceValue()
//        self.present(controller, animated: true, completion: nil)
    }
    
    
}

