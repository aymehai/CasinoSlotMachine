//
//  ViewController.swift
//  CasinoSlotMachine
//
//  Created by Aymen on 6/22/18.
//  Copyright © 2018 Aymen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgSlot1: UIImageView!
    @IBOutlet weak var imgSlot2: UIImageView!
    @IBOutlet weak var imgSlot3: UIImageView!
    @IBOutlet weak var userBet: UILabel!
    @IBOutlet weak var userMoney: UILabel!
    
    @IBAction func btnRoll(_ sender: Any) {
        
        //creates three random numbers
        let num1:Int = Int(arc4random_uniform(4))
        let num2:Int = Int(arc4random_uniform(4))
        let num3:Int = Int(arc4random_uniform(4))
        
        //creates an ArrayList that stores the card suit images
        var suitArray = [
            UIImage(named: "Club.jpg"),
            UIImage(named: "Diamond.jpg"),
            UIImage(named: "Heart.jpg"),
            UIImage(named: "Spade.jpg")
        ]
            
        //uses the random numbers as an index from the ArrayList and reassigns the imgSlots images to random ones
        imgSlot1.image = suitArray[num1]
        imgSlot2.image = suitArray[num2]
        imgSlot3.image = suitArray[num3]
        
    }
    
    func allClubs(num1: Int, num2: Int, num3: Int){
        
        if(num1 == 0 && num2 == 0 && num3 == 0)
        {
            //10* the bet: money + (bet*10)
            
        } else {
            
            //lose: money - bet
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

