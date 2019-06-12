//
//  ViewController.swift
//  Quiz Dorama
//
//  Created by Адия on 6/10/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTitle: UILabel!
    
    //Outlet for Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        updateQuestion()
        
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            
            score += 1
            sender.backgroundColor = .green
            
        } else{
            sender.backgroundColor = .red
        
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(corAnswer), userInfo: nil, repeats: false)

        
}
        optionA.isUserInteractionEnabled = false
        optionB.isUserInteractionEnabled = false
        optionC.isUserInteractionEnabled = false
        optionD.isUserInteractionEnabled = false
        
         questionNumber += 1
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func corAnswer() {
        if optionA.tag == selectedAnswer{
            optionA.backgroundColor = .green
        }
        else if optionB.tag == selectedAnswer{
            optionB.backgroundColor = .green
        }
        else if optionC.tag == selectedAnswer{
            optionC.backgroundColor = .green
        }
        else if optionD.tag == selectedAnswer{
            optionD.backgroundColor = .green
        }
    }
        
    
     @objc func updateQuestion(){
      
        if  questionNumber <= allQuestions.list.count - 1 {
            
        updateUI()
            
        questionTitle.text = allQuestions.list[questionNumber].question
        optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
        optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
        optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
        optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
       
        
            updateState(button: optionA)
            updateState(button: optionB)
            updateState(button: optionC)
            updateState(button: optionD)
            
        selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        
        } else {
            
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
                self.present(controller, animated: true)
        }
}
    func updateUI(){
         scoreLabel.text = "Score: \(score)"
         questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
    }
    func restartQuiz(){
         score = 0
         questionNumber = 0
        updateQuestion()
    }
    
    func updateState(button: UIButton){
        button.backgroundColor = UIColor.blue
        button.isUserInteractionEnabled = true

}

}

