//
//  ViewController.swift
//  project3
//
//  Created by yuanye wang on 6/24/19.
//  Copyright © 2019 Yuanye Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var rand : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        change()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        change()
    }

    @IBAction func button(_ sender: Any) {
        change()
    }
    func change() {
        rand = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[rand])
    }
    
}

