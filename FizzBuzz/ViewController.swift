//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Samantha Wong on 12/10/2016.
//  Copyright © 2016 Samantha Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int? {
        didSet {
            numberButton.setTitle("\(gameScore ?? 0)", for: UIControlState.normal)
            
        }
    }
    var game: Game?

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
   
//        if sender == numberButton {
//            
//            play(move: Move.Number)
//            
//        } else if sender == fizzButton {
//            
//            play(move: Move.Fizz)
//            
//        } else if sender == buzzButton {
//            
//            play(move: Move.Buzz)
//            
//        } else if sender == fizzBuzzButton {
//            
//            play(move: Move.FizzBuzz)
//            
//        }
        
        switch sender {
            
        case numberButton:
            play(move: Move.Number)
        case fizzButton:
            play(move: Move.Fizz)
        case buzzButton:
            play(move: Move.Buzz)
        case fizzBuzzButton:
            play(move: Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        gameScore = game?.score ?? 0
    }

    func play(move: Move) {
        
        guard let gameExists = game else {
            
            print("Something not so funny happened..")
            
            return
        }
            
        let response = gameExists.play(move: move)
        gameScore = response.score
        
    }

}

