//
//  Answer.swift
//  Trivial
//
//  Created by Luis Borjas on 11/21/15.
//  Copyright © 2015 Luis & Yamil. All rights reserved.
//

import UIKit

class Answer {
    var text: String
    var isCorrect: Bool
    
    init(text: String, isCorrect: Bool = false){
        self.text = text
        self.isCorrect = isCorrect
    }
}
