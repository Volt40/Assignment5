//
//  Question.swift
//  Assignment5
//
//  Created by Michael Baljet on 2/11/24.
//

import Foundation

struct Question {
    
    init(_ ques: String, _ o_one: String, _ o_two: String) {
        question = ques
        option_one = o_one
        option_two = o_two
    }
    
    var question: String
    var option_one: String
    var option_two: String
    
}
