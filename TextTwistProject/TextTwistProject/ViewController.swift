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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrambledWord.text = random.scrambled
    }
    
// functions and methods
    
    func userAnswerCheck() {
        var userGuess = userAnswer.text ?? ""
        
        
    }
    
        
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    
    
    
    
    
    
    
    
    
    
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

        if let oldString = textField.text {
            let newString = oldString.replacingCharacters(in: Range(range, in: oldString)!,
                                                          with: string)
            
        }
    return true
    }
}
