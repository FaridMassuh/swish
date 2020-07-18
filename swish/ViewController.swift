//
//  ViewController.swift
//  swish
//
//  Created by Farid on 7/17/20.
//  Copyright © 2020 Farid Massuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    let question:[String] = ["NBA 96' Champ?", "NBA 00' Champ?", "NBA 06' Champ?"]
    let answer:[String] = ["Bulls" , "Lakers" , "Heat"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        QuestionLabel.text = question[index]
    }

    // this is a function for the next button question
    @IBAction func nextQuestion(_ sender: UIButton){
        
        // index +=1 means its going to the next index/question
        index += 1
        
        // if index equals the length of the array...
        if index == question.count{
            
            //... then the index goes back to the starting point
            index = 0
            
            //changing the text of the label according to the array item at index
            QuestionLabel.text = question[index]
        }
        else{
            QuestionLabel.text = question[index]
        }
        
        AnswerLabel.text = "???"
    }
    
    @IBAction func nextAnswer(_ sender: UIButton){
        
        AnswerLabel.text = answer[index]
    }

}

