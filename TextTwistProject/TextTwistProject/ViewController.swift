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
    
    let random = Word(unscrambled: Word.getRandomWord())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// functions and methods
    
    func scrambledWordPresented() {
        scrambledWord.text = random
    }
    @IBAction func nextWordButtonPressed(_ sender: UIButton) {
        
        
    }
        
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {

        if let oldString = textField.text {
            let newString = oldString.replacingCharacters(in: Range(range, in: oldString)!,
                                                          with: string)
            
        }
    
    }
}
