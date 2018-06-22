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
    
    
    @IBAction func placeBetAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "BET AMOUNT", message: "Place Your Bet", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addTextField(configurationHandler: {(betField) in betField.text = ""
            betField.placeholder="$0"
            betField.isSecureTextEntry=false
        })
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {[weak alertController](_) in
            let betField = alertController?.textFields![0]
            
            let bet = betField?.text
            self.userBet.text=bet
            
        }))
        
        present(alertController,animated: true,completion: nil)
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


