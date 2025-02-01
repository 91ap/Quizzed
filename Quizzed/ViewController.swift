//
//  ViewController.swift
//  Quizzed
//
//  Created by apat on 1/31/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = ["Four plus Four equals 8?", "Is Swift a programming language?", "What is the capital of France?", "What is the largest ocean?", "What year was Swift released?"]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
         
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber]

        
    }
}

