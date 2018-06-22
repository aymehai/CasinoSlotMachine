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
    
    //function that is called to check if any pairs. If no paids send off to check if any other pairs
    func allClubs(num1: Int, num2: Int, num3: Int){
        
                alertController.addTextField(configurationHandler: {(betField) in betField.text = ""
                    betField.placeholder="$0"
                    betField.isSecureTextEntry=false
                })
        
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {[weak alertController](_) in
                    let betField = alertController?.textFields![0]
        
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

