//
//  QuizBrain.swift
//  LordOfTheRingQuiz
//
//  Created by Esra Ekinci on 18.02.2023.
//
import UIKit
import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
    Question(q: "What is Gandalf known as to the Elves?", a: ["Mithrandir", "Celeborn", "Glorfindel"], correctAnswer: "Mithrandir"),
    Question(q: "One ring to bring them all, and in the darkness bind them. In the land of Mordor...", a: ["Where Sauron sleeps", "Where the Shire lives", "Where the shadows lie"], correctAnswer: "Where the shadows lie"),
    Question(q: "What two items does Bilbo give to Frodo in Rivendell?", a: ["The One Ring and Sting", "Mithril shirt and sword", "Bow and arrows"], correctAnswer: "Mithril shirt and sword"),
    Question(q: "There are four Hobbits, Merry, Pippin, Frodo, and Samwise. What are their last names?", a: ["Brandywine, Terk, Baggin, Gimli", "Brandybuck, Took, Baggins, Gamgee", "Barliman, Tolk, Buggins, Gamgel"], correctAnswer: "Brandybuck, Took, Baggins, Gamgee"),
    Question(q: "Who cures Frodo in Rivendell?", a: ["Gandalf", "Aragorn", "Elrond"], correctAnswer: "Elrond"),
    Question(q: "Who are three patients cured by Aragorn in 'The Return Of The King'?", a: ["Frodo, Pippin, Denethor", "Samwise, Boromir, Eowyn", "Faramir, Merry, Eowyn"], correctAnswer: "Faramir, Merry, Eowyn"),
    Question(q: "What race is Smeagol?", a: ["Gollum","Orc", "Hobbit (Stoor)"], correctAnswer: "Hobbit (Stoor)"),
    Question(q: "Who is the only one of the Fellowship who refuses to go into Lothlorien?", a: ["Gimli", "Aragorn", "Boromir"], correctAnswer: "Boromir"),
    Question(q: "Which member of the thirteen Dwarves in 'The Hobbit' does Frodo meet in Rivendell?", a: ["Thorin", "Gloin", "Balin"], correctAnswer: "Gloin"),
    Question(q: "Who does Elrond object to being a member of the Fellowship?", a: ["Gimli", "Samwise", "Pippin"], correctAnswer: "Pippin")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswer() -> [String] {
        return quiz[questionNumber].answers
    }
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
