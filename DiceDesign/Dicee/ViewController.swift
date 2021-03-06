//
//  ViewController.swift
//  Dicee
//
//  Created by Crypto on 11/27/18.
//  Copyright © 2018 Crypto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1" , "dice2" , "dice3", "dice4" , "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateRandomDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateRandomDiceImages ()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
    
        updateRandomDiceImages()
    }
    
    func updateRandomDiceImages () {
        
        randomDiceIndex1 = Int.random( in: 0 ... 5 )
        randomDiceIndex2 = Int.random( in: 0 ... 5 )
        
        //        print (randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage (named: diceArray[randomDiceIndex2])
        
    }
    
}

