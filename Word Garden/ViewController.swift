//
//  ViewController.swift
//  Word Garden
//
//  Created by Bryan Kim on 2/1/18.
//  Copyright © 2018 Bryan Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("In viewDidLoad, is guessedLetterField the first responder?", guessedLetterField.isFirstResponder)
        
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
        
        
    }

    func updateUIAfterGuess() {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = "" // clear text field
    }
    
    
    
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        print("Hey! The guessedLetterFieldChanged!!")
        
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)" // String interpolation to conver letterGuessed, which is a character, to a string, because that is the type of guessedLetterField
            // This route occurs only if letterGuessed is not a nil value
            guessLetterButton.isEnabled = true
        } else {
            // if there is a nil, which is what it is if it comes to this statement, we want to disable to guessLetterButtonPressed button.
            guessLetterButton.isEnabled = false
        }
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        // pressed Done on keyboard
        
        updateUIAfterGuess()
        
  
        
        
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        // text field is first responder when you click on it
        
        
        print("In guessLetterButtonPressed, is guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        
        updateUIAfterGuess()
        
        
        print("In guessLetterPressed, is guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

