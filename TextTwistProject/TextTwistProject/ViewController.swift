//
//  ViewController.swift
//  TextTwistProject
//
//  Created by Benjamin Stone on 11/4/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userAnswer: UITextField!
    
    @IBOutlet weak var scrambledWord: UILabel!
    
    let random = Word.getRandomWord()
    
    let userAnsComparison = ResultConditions()
    
    var newWord = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrambledWord.text = random.scrambled
        
        userAnswer.delegate = self

                            
    }
    
// functions and methods
    
    func userAnswerCheck() {
        let userGuess = userAnswer.text ?? ""
        
        if userGuess == userAnsComparison.winningAns() {
            
        }
        
    }
    
        
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("entered FieldShouldBeginEditing")
        return true
    }
    

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        
        
        print("textFieldShouldBeginEditing")
    }
    
    
    
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

        print(string)
        print(scrambledWord.text)
        
        var firstTime: Bool = true
        
        newWord = ""
        for value in scrambledWord.text! {
            if String(value) == string && firstTime {
                if scrambledWord.text!.count == 1 {
                    scrambledWord.text = random.unscrambled
                    
                    //winning part
                } else {
                firstTime = false
                
                continue
                }
            } else {

                newWord += value.description
                
                scrambledWord.text = newWord
                
            }
        }
        
        
        print(newWord)
        
    return true
    }
}

