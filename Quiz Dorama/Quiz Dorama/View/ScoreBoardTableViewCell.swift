//
//  ScoreBoardTableViewCell.swift
//  Quiz Dorama
//
//  Created by Адия on 6/12/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import UIKit

class ScoreBoardTableViewCell: UITableViewCell {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setScoreBoardCell(username: Player, score: Player) {
        scoreLabel.text = String(score.score)
        usernameLabel.text = username.username
    }

}
