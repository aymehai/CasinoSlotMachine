//
//  ViewController.swift
//  CasinoSlotMachine
//
//  Created by Aymen on 6/22/18.
//  Copyright © 2018 Aymen. All rights reserved.
//

import UIKit

class AnesController: UIViewController {
    
    @IBOutlet weak var imgSlot1: UIImageView!
    @IBOutlet weak var imgSlot2: UIImageView!
    @IBOutlet weak var imgSlot3: UIImageView!
    
    @IBOutlet weak var userBet: UILabel!
    @IBOutlet weak var userMoney: UILabel!
    
    
    //function that is called to check if any pairs. If no paids send off to check if any other pairs
    func allClubs(num1: Int, num2: Int, num3: Int){
        
        if(num1 == 0 && num2 == 0 && num3 == 0)
        {
            //10* the bet: money + (bet*10)
            
        } else {
            
            //lose: money - bet
        }
        
        
    }
    
    func allDiamonds(num1: Int, num2: Int, num3: Int) {
        
        if(num1 == 1 && num2 == 1 && num3 == 1)
        {
            //12* the bet: money + (bet * 12)
        } else {
            //lose: money - bet
        }
    }
    
    func allHearts(num1: Int, num2: Int, num3: Int) {
        
        if(num1 == 2 && num2 == 2 && num3 == 2)
        {
            //8* the bet: money + (bet * 8)
        } else {
            //lose: money - bet
        }
    }
    
    func allSpades(num1: Int, num2: Int, num3: Int) {
        
        if(num1 == 3 && num2 == 3 && num3 == 3)
        {
            //20* the bet: money + (bet * 20)
        } else {
            //lose: money - bet
        }
    }
    
    func jackpot(num1: Int, num2: Int, num3: Int) {
        
        if(num1 == 3 && num2 == 1 && num3 == 0)
        {
            //25* the bet: money + (bet * 25)
        } else {
            //lose: money - bet
        }
    }
    
   
    
    
}

