//
//  Question.swift
//  MyQuizzler
//
//  Created by Лилия Феодотова on 30.01.2023.
//

import Foundation

struct Question{
    var question: String
    var answers: [String]
    var correctAnswer: String
    
    init(question: String, answers: [String], correctAnswer: String) {
        self.question = question
        self.answers = answers
        self.correctAnswer = correctAnswer
    }
}
