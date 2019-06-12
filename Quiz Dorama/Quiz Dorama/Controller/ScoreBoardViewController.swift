//
//  ScoreBoardViewController.swift
//  Quiz Dorama
//
//  Created by Адия on 6/12/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let infPlayers = PlayerList()
    @IBOutlet weak var playerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        /*for i in 0..<infPlayers.players.count {
         print(infPlayers.players[i].username)
    }
         return QuizViewController.players.count*/
        return infPlayers.players.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
        let board = infPlayers.players[indexPath.row]
    cell.setScoreBoardCell(username: board, score: board)
        return cell
    }
    
    
    @IBAction func restartButtonAction(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
        
        score = 0
        questionNumber = 0
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.present(controller, animated: true)
    }
    

    


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
