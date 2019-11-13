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
    
    var scrambledChar: Character = "a" {
        didSet {
            
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrambledWord.text = random.scrambled
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
        
        let userText = textField.text ?? ""
        
        for char in userText {
            if
        }
        
        
        
        print("textFieldShouldBeginEditing")
    }
    
    
    
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

//        let userText = textField.text ?? ""
//
//        for char in userText {
//            if
//        }
        
        
        
        
        
            
    return true
    }
}













//        if let oldString = textField.text {
//            let newString = oldString.replacingCharacters(in: Range(range, in: oldString)!,
//                                                          with: string)
