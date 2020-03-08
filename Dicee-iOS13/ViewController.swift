//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Reference to the dice image views
    @IBOutlet weak var diceLeftView: UIImageView!
    @IBOutlet weak var diceRightView: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    func pickRandomDiceImages(images: Array<UIImage>) {
        diceLeftView.image = images.randomElement()
        diceRightView.image = images.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        pickRandomDiceImages(images: diceImages)
    }

    @IBAction func RollDiceButton(_ sender: UIButton) {
        pickRandomDiceImages(images: diceImages)
    }
    
}

