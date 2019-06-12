//
//  Question.swift
//  Quiz Dorama
//
//  Created by Адия on 6/10/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    
    let correctAnswer: Int
    
    init(questionTitle: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, Answer: Int){
        question = questionTitle
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = Answer
    }
    
}
