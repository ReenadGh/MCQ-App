//
//  ViewController.swift
//  IOSBeltEXAM
//
//  Created by Reenad gh on 03/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    var questionNumber = 0
    var score = 0
    let quiz = Quiz()
    
    
    //if user choice one of the options this method will invoke
  
    @IBAction func optionClicked(_ sender: UIButton) {
      //tag of option button represent the option
        
     // if the user select the correct answer
        if (sender.tag == quiz.MyQuestions[questionNumber].currectAnswer){
            sender.layer.backgroundColor = UIColor.green.cgColor
            score = score + 1
            scoreLable.text = "Correct! +1 "
        }
        
        // if the user select the Wrong answer
        else{
            sender.layer.backgroundColor = UIColor.red.cgColor
       // change the background color of the correct answer to green
            view.viewWithTag(quiz.MyQuestions[questionNumber].currectAnswer)?.layer.backgroundColor = UIColor.green.cgColor
            scoreLable.text = "Wrong! "


        }
        
        
    }
    // method that will call to go to next question or end the quiz
    @IBAction func nextQuestion(_ sender: UIButton) {
        scoreLable.text = "Score \(score) of \(quiz.MyQuestions.count)"
        // check if not the end of quiz
        if questionNumber < quiz.MyQuestions.count - 1{
        questionNumber = questionNumber + 1
        UpdateQuestion()
            
            // check if its the last question to view the restart button
            if( questionNumber == quiz.MyQuestions.count - 1){
                nextButton.setImage (UIImage(systemName: "repeat"),for: .normal)
                nextButton.setTitle("", for: .normal)
                nextButton.layer.backgroundColor = UIColor.orange.cgColor
            }
            
     
        }
        //restart the quiz
        else{
            scoreLable.text = "retaked !"

            score = 0
            questionNumber=0
            UpdateQuestion()
            nextButton.setTitle("next", for: .normal)
           // nextButton.setImage (nil,for: .normal)

        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionView.layer.cornerRadius = 34.0
        option1.layer.cornerRadius =  20.0
        option2.layer.cornerRadius =  20.0
        option3.layer.cornerRadius =  20.0
        option4.layer.cornerRadius =  20.0
//start from the first question
        UpdateQuestion()
    }
    
    
    
    func UpdateQuestion(){
        //update the UI element to the current question
        questionLable.text = quiz.MyQuestions[questionNumber].question
        option1.setTitle( quiz.MyQuestions[questionNumber].option1,for: .normal)
        option2.setTitle( quiz.MyQuestions[questionNumber].option2,for: .normal)
        option3.setTitle( quiz.MyQuestions[questionNumber].option3,for: .normal)
        option4.setTitle( quiz.MyQuestions[questionNumber].option4,for: .normal)
//reset the color of button to orginal color
        
        option1.layer.backgroundColor = UIColor(red: 0.95, green: 0.62, blue: 0.59, alpha: 1.00).cgColor
        option2.layer.backgroundColor = UIColor(red: 0.95, green: 0.62, blue: 0.59, alpha: 1.00).cgColor
        option3.layer.backgroundColor = UIColor(red: 0.95, green: 0.62, blue: 0.59, alpha: 1.00).cgColor
        option4.layer.backgroundColor = UIColor(red: 0.95, green: 0.62, blue: 0.59, alpha: 1.00).cgColor

    }
    

}

