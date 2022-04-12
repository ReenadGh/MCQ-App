//
//  Quiz.swift
//  IOSBeltEXAM
//
//  Created by Reenad gh on 03/05/1443 AH.
//

import Foundation

class Quiz {
    
var MyQuestions = [Question]()
    
    init(){
        
        MyQuestions.append(Question(question: "Which of the following option leads to the portability and security of Java?",
            option1: "Bytecode is executed by JVM",
            option2: "The applet makes the Java code secure and portable",
            option3: "Use of exception handling",
            option4: "Dynamic binding between objects",
            currectAnswer: 1))
        
        
        MyQuestions.append(Question(question: "Which of the following is not a Java features?",
            option1: "Dynamic",
            option2: "Architecture Neutral",
            option3: "Use of pointers",
            option4: "Object-oriented",
            currectAnswer: 3))
   
        MyQuestions.append(Question(question: "_____ is used to find and fix bugs in the Java programs.",
            option1: "JVM",
            option2: "JRE",
            option3: "JDK",
            option4: "JDB",
            currectAnswer: 4))
        
        MyQuestions.append(Question(question: "What is the return type of the hashCode() method in the Object class?",
            option1: "Object",
            option2: "int",
            option3: "Long",
            option4: "Void",
            currectAnswer: 2))
 
        MyQuestions.append(Question(question: " What does the expression float a = 35 / 0 return?",
            option1: "0",
            option2: "Not a Number",
            option3: "Infinity",
            option4: "Run time exception",
            currectAnswer: 3))
        
        MyQuestions.append(Question(question: "Which of the following for loop declaration is not valid?",
            option1: "for ( int i = 99; i >= 0; i / 9 )",
            option2: "for ( int i = 7; i <= 77; i += 7 )",
            option3: "for ( int i = 20; i >= 2; - -i )",
            option4: "for ( int i = 2; i <= 20; i = 2* i )",
            currectAnswer: 1))
        
    }
}
