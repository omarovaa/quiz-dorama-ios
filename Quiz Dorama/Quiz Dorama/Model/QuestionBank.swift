//
//  QuestionBank.swift
//  Quiz Dorama
//
//  Created by Адия on 6/10/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(questionTitle: "Who Played The Main Character In W?", choiceA: "Song Joong Ki", choiceB: "Park Bo Gum", choiceC: "Lee Min Ho", choiceD: "Lee Jong Seok", Answer: 4))
        list.append(Question(questionTitle: "What Is The Most Famous Kdrama?", choiceA: "Moon Lovers", choiceB: "F4", choiceC: "Doctors", choiceD: "W", Answer: 2))
        list.append(Question(questionTitle: "Who Was The Protagonist In Descendants Of Sun?", choiceA: "Policeman", choiceB: "Soldier", choiceC: "Doctor", choiceD: "Detective", Answer: 2))
        list.append(Question(questionTitle: "In What Movie Lee Min Ho Did Play?", choiceA: "Secretary Kim", choiceB: "Doctor Stranger", choiceC: "Secret Garden", choiceD: "The Heirs", Answer: 4))
        list.append(Question(questionTitle: "In What Drama Kim So Hyun Did Play?", choiceA: "Ghost", choiceB: "Angry Mom", choiceC: "Page Turner", choiceD: "School 2017", Answer: 3))
        list.append(Question(questionTitle: "Who Played The Main Character In Pinocchio?", choiceA: "Park Shin Hye", choiceB: "Park Bo Eun", choiceC: "Lee Sung Kyung", choiceD: "IU", Answer: 1))
        list.append(Question(questionTitle: "In What Movie IU Did Play?", choiceA: "Moon Lovers", choiceB: "Hoblin", choiceC: "Descendants Of Sun", choiceD: "School 2013", Answer: 1))
        list.append(Question(questionTitle: "In What Drama Park Bo Eun Did Play?", choiceA: "Powerful Woman", choiceB: "Let Fight Ghost", choiceC: "City Hunter", choiceD: "Salaryman", Answer: 1))
        list.append(Question(questionTitle: "Who Played The Main Character In Moorim School?", choiceA: "Lee Jong Seok", choiceB: "Lee Hyun Woo", choiceC: "Park Bo Gum", choiceD: "Wi Ha Joon", Answer: 2))
        list.append(Question(questionTitle: "In What Drama Song Joong Ki Did Play?", choiceA: "Ghost", choiceB: "School 2013", choiceC: "A Werewolf Boy", choiceD: "W", Answer: 3))
        
    }
    
}

