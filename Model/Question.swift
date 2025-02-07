//
//  Question.swift
//  Quizzed
//
//  Created by apat on 2/4/25.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    
        
    }
    
   
   
    
}

struct MultipleChoiceQuestion {
    let question: String
    let choices: [String]
    let correctAnswer: String
    
    init(q: String, c: [String], correctAnswer: String){
        question = q
        choices = c
        self.correctAnswer = correctAnswer
    }

    }

