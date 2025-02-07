//
//  MultipleChoiceViewController.swift
//  Quizzed
//
//  Created by apat on 2/7/25.
//

import UIKit

class MultipleChoiceViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    
    
    
    
    
    var multipleChoice = MultipleChoice()


     override func viewDidLoad() {
         super.viewDidLoad()

         updateUI()
     }

     @IBAction func answerButtonPressed(_ sender: UIButton) {

         let userAnswer = sender.currentTitle!
         
         let userGotItRight = multipleChoice.checkAnswer(userAnswer)

         if userGotItRight {
             sender.backgroundColor = UIColor.green
             print("Correct!")
         } else {
             sender.backgroundColor = UIColor.red
             print("o_O......Incorrect")
         }
         
         multipleChoice.nextQuestion()

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
         questionLabel.text = multipleChoice.getQuestionText()
         // Updated the progress view
         progressBar.progress = multipleChoice.getProgress()
         scoreLabel.text = "Score: \(multipleChoice.getScore())"
         
         firstChoiceButton.setTitle(multipleChoice.quiz[multipleChoice.questionNumber].choices[0], for: .normal)
         secondChoiceButton.setTitle(multipleChoice.quiz[multipleChoice.questionNumber].choices[1], for: .normal)
         thirdChoiceButton.setTitle(multipleChoice.quiz[multipleChoice.questionNumber].choices[2], for: .normal)

         firstChoiceButton.backgroundColor = .clear
         secondChoiceButton.backgroundColor = .clear
         thirdChoiceButton.backgroundColor = .clear
         
         

        
     }

}
