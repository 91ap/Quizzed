//
//  MultipleChoice.swift
//  Quizzed
//
//  Created by apat on 2/7/25.
//

import Foundation

struct MultipleChoice {
    let quiz = [
        MultipleChoiceQuestion(q: "Which is the largest organ in the human body?", c: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                MultipleChoiceQuestion(q: "Five dollars is worth how many nickels?", c: ["25", "50", "100"], correctAnswer: "100"),
                MultipleChoiceQuestion(q: "What do the letters in the GMT time zone stand for?", c: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                MultipleChoiceQuestion(q: "What is the French word for 'hat'?", c: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                MultipleChoiceQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", c: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                MultipleChoiceQuestion(q: "How would one say goodbye in Spanish?", c: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                MultipleChoiceQuestion(q: "Which of these colours is NOT featured in the logo for Google?", c: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                MultipleChoiceQuestion(q: "What alcoholic drink is made from molasses?", c: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                MultipleChoiceQuestion(q: "What type of animal was Harambe?", c: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        
        
                MultipleChoiceQuestion(q: "Where is Tasmania located?", c: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]

    var questionNumber = 0
    var score = 0

    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }

    mutating func getScore() -> Int {
        
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }

    func getProgress() -> Float {
        
        let progress = Float(questionNumber + 1)  / Float(quiz.count)
        return progress
    }

    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
   
}
