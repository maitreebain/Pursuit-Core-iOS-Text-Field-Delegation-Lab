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

        

        for value in scrambledWord.text! {
                for char in string {
                    if !(newWord.contains(value)) {
                    if value == char {
                        newWord += value.description//b
                        }
                    }
            }
        }
        
        print(newWord)

//
                            
//                            let rePlaced = scrambledWordArray.remove(at: Int)
//                            let replaced = scrambledWord.text?.replacingCharacters(in: RangeExpression, with: <#T##StringProtocol#>)
        //                    scramledWordArray.remove(at: )
//                        }
//                    }
//                }
        
        
        
            
    return true
    }
}

