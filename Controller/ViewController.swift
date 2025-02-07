//
//  ViewController.swift
//  Quizzed
//
//  Created by apat on 1/31/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!

    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!

   var quizBrain = QuizBrain()


    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        if userGotItRight {
            sender.backgroundColor = UIColor.green
            print("Correct!")
        } else {
            sender.backgroundColor = UIColor.red
            print("o_O......Incorrect")
        }
        
        quizBrain.nextQuestion()

        Timer
            .scheduledTimer(
                timeInterval: 0.2,
                target: self,
                selector: #selector(updateUI),
                userInfo: nil,
                repeats: false
            )

    }

    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        // Updated the progress view
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        
        

       
    }
}
