//
//  ViewController.swift
//  MemeMaker
//
//  Created by Eugene on 23.10.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValues()
    }

    func configureTopSegmentControl() {
        topCaptionSegmentedControl.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "🕶", text: "You know what's cool?")
        let option2 = CaptionOption(emoji: "💥", text: "You know what makes me mad?")
        let option3 = CaptionOption(emoji: "💕", text: "You know what I love?")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
        func configureBottomSegmentControl() {
            bottomCaptionSegmentedControl.removeAllSegments()
            
            let option1 = CaptionOption(emoji: "🐱", text: "Cats wearing hats")
            let option2 = CaptionOption(emoji: "🐕", text: "Dogs carrying logs")
            let option3 = CaptionOption(emoji: "🐒", text: "Monkeys being funky")
            bottomChoices = [option1, option2, option3]
            
            for choice in bottomChoices {
                bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
            }
    }
    
    func selectInitValues() {
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        topCaptionLabel.text = topChoices[0].text
        bottomCaptionLabel.text = bottomChoices[0].text
        
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topCaptionLabel.text = currentChoice.text
    }
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomCaptionLabel.text = currentChoice.text
    }
    
}

