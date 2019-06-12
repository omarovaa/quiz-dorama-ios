//
//  PlayerList.swift
//  Quiz Dorama
//
//  Created by Адия on 6/12/19.
//  Copyright © 2019 Adiya Omarova. All rights reserved.
//

import Foundation

class PlayerList{
    var players = [Player]()
    init(){
        players.append(Player(username: "\(FrontViewController.player.username)", score: score))
    }
}
