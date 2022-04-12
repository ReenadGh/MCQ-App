//
//  Question.swift
//  IOSBeltEXAM
//
//  Created by Reenad gh on 03/05/1443 AH.
//

import Foundation

// here is the class question hold the strucet of question and option answers and currect answer
class Question{
    
    let question : String
    let option1 : String
    let option2 : String
    let option3 : String
    let option4 : String
    let currectAnswer : Int

    init(question:String , option1: String ,option2:String ,option3:String ,option4:String , currectAnswer : Int){
        
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.currectAnswer = currectAnswer

    }
}
