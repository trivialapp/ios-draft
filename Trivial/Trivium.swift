//
//  Trivium.swift
//  Trivial
//
//  Created by Luis Borjas on 11/21/15.
//  Copyright © 2015 Luis & Yamil. All rights reserved.
//

import UIKit
import GameplayKit


class Trivium {
    var name: String
    var photo: UIImage?
    var questions: [Question]
    var session: [(question: Question, wasCorrect: Bool)]
    
    init(name: String, photo: UIImage?, questions: [Question] = []){
        self.name = name
        self.photo = photo
        self.questions = questions
        self.session = []
    }
    
    func createSession(batchSize: Int = 5){
        //TODO: this could be a different object
        self.session = []
        //found in http://stackoverflow.com/questions/24026510/how-do-i-shuffle-an-array-in-swift
        var shuffled: [Question] = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(self.questions) as! [Question]
        for index in 0..<batchSize {
            //wrong by default
            self.session += [(shuffled[index], false)]
        }
    }
    
}
