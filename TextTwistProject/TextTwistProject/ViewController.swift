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
    
     let rando = Word.getRandomWord()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// functions and methods
    
    func scrambledWordPresented() {
        scrambledWord.text = rando
    }
    @IBAction func nextWordButtonPressed(_ sender: UIButton) {
        
    }
    
}

