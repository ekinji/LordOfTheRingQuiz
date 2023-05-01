//
//  Question.swift
//  LordOfTheRingQuiz
//
//  Created by Esra Ekinci on 18.02.2023.
//

import Foundation

struct Question {
    let text : String
    let answers : [String]
    let rightAnswer : String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
