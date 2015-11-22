//
//  Question.swift
//  Trivial
//
//  Created by Luis Borjas on 11/21/15.
//  Copyright © 2015 Luis & Yamil. All rights reserved.
//

import UIKit

func ==(s: Question, o: Question) -> Bool {
    return s.hashValue == o.hashValue
}


class Question : Hashable {
    var text: String
    var answers: [Answer]
    
    init(text: String, answers: [Answer] = []){
        self.text = text
        self.answers = answers
    }
    
    //warning: not correct if two questions have the same value!
    var hashValue : Int {
        get{
            return self.text.hashValue
        }
    }
    
}


