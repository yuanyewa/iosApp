//
//  ViewController.swift
//  project2
//
//  Created by yuanye wang on 6/24/19.
//  Copyright © 2019 Yuanye Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let handArray = ["scissor", "fist", "hand"]

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDice()
    }

    @IBAction func roll(_ sender: Any) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice() {
        let rand1 : Int = Int.random(in: 0...2)
//        let rand2 : Int = Int.random(in: 0...2)
        image1.image = UIImage(named: handArray[rand1])
//        image2.image = UIImage(named: handArray[rand2])
    }
}

