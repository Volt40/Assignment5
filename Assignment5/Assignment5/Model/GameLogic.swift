//
//  GameLogic.swift
//  Assignment5
//
//  Created by Michael Baljet on 2/11/24.
//

import Foundation

struct GameLogic {
    private var questionIndex = 1
    
    // Questions are arranged in a tree structure.
    let questions = [
        Question("Are are the caption of the ship. Would you like to sail east or west?",
                "East",
                "West"),
        Question("You sail east! You see an island, would you like to dock?",
                "Yes",
                "No"),
        Question("You sail west! You see rival pirates! Would you like to attact or flee?",
                "Attack!",
                "Flee!"),
        Question("You dock the ship and set up camp on the island! Good night!", "Reset Game", ""),
        Question("You choose to remain at sea for the night!", "Reset Game", ""),
        Question("You attack and get sunk! Game over!", "Reset Game", ""),
        Question("You Flee and escape, phew!", "Reset Game", "")
    ]
    
    func getQuestionText() -> String {
        return questions[questionIndex - 1].question
    }
    
    func getOptionOneText() -> String {
        return questions[questionIndex - 1].option_one
    }
    
    func getOptionTwoText() -> String {
        return questions[questionIndex - 1].option_two
    }
    
    mutating func makeSelection(_ option: Int) {
        // Move down the selected branch.
        if (option == 0) {
            // Option 1
            questionIndex = questionIndex * 2;
        } else {
            // Option 2
            questionIndex = questionIndex * 2 + 1
        }
        if (questionIndex > questions.count) {
            questionIndex = 1;
        }
    }
    
    mutating func resetGame() {
        questionIndex = 0;
    }
    
}
