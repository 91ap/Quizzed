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
