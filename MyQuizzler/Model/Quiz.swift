//
//  Quiz.swift
//  MyQuizzler
//
//  Created by Лилия Феодотова on 30.01.2023.
//

import Foundation

struct Quiz{
    let quiz = [
        Question(question: "Сколько всего ног будет у 4 собак, 2 слонов, 15 кошек и 26 людей?", answers: ["142", "110", "136"], correctAnswer: "136"),
        Question(question: "Какие три числа будут иметь одинаковый ответ и если их сложить вместе, и если их умножить друг на друга?", answers: ["1, 3 и 11", "1, 3 и 9", "1, 2 и 3"], correctAnswer: "1, 2 и 3"),
        Question(question: "Маше 54 года, а ее маме 80. Сколько лет назад мама Маши была в три раза старше нее?", answers: ["26 лет назад", "41 год назад", "30 лет назад"], correctAnswer: "41 год назад"),
        Question(question: "Есть трехзначное число. Вторая цифра в 4 раза больше третьей, в то время как первая цифра на три меньше, чем вторая. Что это за число?", answers: ["138", "141", "250"], correctAnswer: "141"),
        Question(question: "В чаше 60 шариков. Они красного, синего и желтого цвета. 1/3 из них желтого цвета и ¼ - синего. Сколько красных шариков в чаше?", answers: ["32", "25", "30"], correctAnswer: "25"),
        Question(question: "Какое число должно быть следующим в этой последовательности: 4; 16; 5; 25; 6; 36; 7; 49; 8 ...?", answers: ["64", "56", "32"], correctAnswer: "64")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getAnswers() -> [String]{
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        } else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1;
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int{
        return score
    }
}
