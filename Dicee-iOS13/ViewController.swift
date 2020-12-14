//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Harry on 03/10/2020.


import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows me to reference a UI element
    //    Vars for the 2 dice images
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
 
    
    // IBAction allows me to have a UI element that has afunction attached to it, similar to event listener
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // vars for random numbers for both dice
        // creates new random number every time button is tapped
        let leftDiceRandomNumber = Int.random(in: 0...5)
        let rightDiceRandomNumber = Int.random(in: 0...5)
        // array for dice images
        let diceImageArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        // get new dice image from array based on random number
        // once user has tapped button
        diceImageView1.image = diceImageArray[leftDiceRandomNumber]
        diceImageView2.image = diceImageArray[rightDiceRandomNumber]
        
    }
    

}

