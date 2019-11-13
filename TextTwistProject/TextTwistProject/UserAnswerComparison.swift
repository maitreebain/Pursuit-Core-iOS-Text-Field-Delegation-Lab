//
//  UserAnswerComparison.swift
//  TextTwistProject
//
//  Created by Maitree Bain on 11/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation

enum UserAnswerComparison {
    case correct
    case incorrect
    
}

class ResultConditions {
    
    var correctAns: String
    
    init() {
        correctAns = Word.getRandomWord().unscrambled
    }
    
    func correctUserAnswer(answer: String) -> UserAnswerComparison {
        
        if answer == correctAns {
            return .correct
        }
        return .incorrect
    }
    
    
    
    
}
