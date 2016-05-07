//
//  ViewController.swift
//  guess my number
//
//  Created by Jamie Rose on 06/05/2016.
//  Copyright © 2016 Jamie Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var number: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guess(sender: AnyObject) {
      let randomNumber = arc4random_uniform(10)
       let guessInt = Int(number.text!)
        if guessInt != nil {
            if Int(randomNumber) == guessInt{
                answer.text = "congrats you guessed right"
            } else {
                answer.text = "nope it was \(randomNumber)"
            }
        } else {
            answer.text = "please enter a number 1-9 please"
        }
        
    
    }

    @IBOutlet weak var answer: UILabel!
}

