//
//  ViewController.swift
//  WarCardGame
//
//  Created by Leonardo Paez on 11/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightSocreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 1...14)
        //print(rightNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if leftNumber > rightNumber{
            //esquerda ganha
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber{
            //direita é maior \
            rightScore += 1
            
            rightSocreLabel.text = String(rightScore)
        
        }
        else{
            //empate
           
            
        }
        
    }
    
    

}

