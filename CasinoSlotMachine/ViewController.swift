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
    
    @IBOutlet weak var lblWinCount: UILabel!
    @IBOutlet weak var lblLoseCount: UILabel!
    
    @IBAction func btnRoll(_ sender: Any) {
        
        //creates three random numbers
        let num1:Int = Int(arc4random_uniform(4))
        let num2:Int = Int(arc4random_uniform(4))
        let num3:Int = Int(arc4random_uniform(4))
        
        //creates an ArrayList that stores the card suit images
        var suitArray = [
            UIImage(named: "Heart.jpg"),
            UIImage(named: "Club.jpg"),
            UIImage(named: "Diamond.jpg"),
            UIImage(named: "Spade.jpg")
        ]
        
        var slotAnime: [UIImage] = []
        
        for index in 1...16 {
            slotAnime.append(UIImage(named: "frame\(index).jpg")!)
        }
        
        imgSlot1.animationImages = slotAnime
        imgSlot1.animationDuration = 1.0
        imgSlot1.animationRepeatCount = 1
        imgSlot1.startAnimating()
        
        imgSlot2.animationImages = slotAnime
        imgSlot2.animationDuration = 1.0
        imgSlot2.animationRepeatCount = 2
        imgSlot2.startAnimating()
        
        imgSlot3.animationImages = slotAnime
        imgSlot3.animationDuration = 1.0
        imgSlot3.animationRepeatCount = 3
        imgSlot3.startAnimating()
        
        //uses the random numbers as an index from the ArrayList and reassigns the imgSlots images to random ones
        imgSlot1.image = suitArray[num1]
        imgSlot2.image = suitArray[num2]
        imgSlot3.image = suitArray[num3]
        
        checkForWinOrLoss(num1: num1, num2: num2, num3: num3)
        
    }
    
    func checkForWinOrLoss(num1:Int,num2:Int,num3:Int){
        
        let betAmount = (userBet.text! as NSString).integerValue
        var moneyAmount = (userMoney.text! as NSString).integerValue
        
        if(betAmount > 0){
        var winCount = (lblWinCount.text! as NSString).integerValue
        var lossCount = (lblLoseCount.text! as NSString).integerValue
        
        if(num1 == 0 && num2 == 0 && num3 == 0){
            moneyAmount += betAmount * 8
            winCount+=1
        }
        else if(num1 == 1 && num2 == 1 && num3 == 1){
            moneyAmount += betAmount * 10
            winCount+=1
        }
        else if(num1 == 2 && num2 == 2 && num3 == 2){
            moneyAmount += betAmount * 12
            winCount+=1
        }
        else if(num1 == 3 && num2 == 3 && num3 == 3){
            moneyAmount += betAmount * 20
            winCount+=1
        }
        else if(num1 == 3 && num2 == 2 && num3 == 1){
            moneyAmount += betAmount * 20
            winCount+=1
        }
        else{
            moneyAmount -= betAmount
            lossCount+=1
        }
        userMoney.text = String(moneyAmount)
        userBet.text = "0"
        lblWinCount.text = String(winCount)
        lblLoseCount.text = String(lossCount)
        
        if(moneyAmount >= 100000){
            winnerAlert()
        }
        if(moneyAmount <= 0){
            loserAlert()
        }
        }
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
    
        func winnerAlert() {
        
        let alertController = UIAlertController(title: "Winner Winner Chicken Dinner", message: "You Have Won!", preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        
        present(alertController,animated: true,completion: nil)
    }
    
        func loserAlert() {
        
        let alertController = UIAlertController(title: "Loser Loser Double Loser", message: "You Have Lost Everything LOL!", preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        
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


