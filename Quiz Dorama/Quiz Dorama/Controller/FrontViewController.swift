//
//  FrontViewController.swift
//  Quiz Dorama
//
//  Created by Адия on 6/10/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    static var player = Player(username: "None", score: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func startButtonPressed(_ sender: Any) {
        if usernameField.text != "" {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
            self.present(controller, animated: true)
        
        } 
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    }
    

    /*
    // MARK: - Navigation

      {
     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

