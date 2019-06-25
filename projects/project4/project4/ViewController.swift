//
//  ViewController.swift
//  project4
//
//  Created by yuanye wang on 6/24/19.
//  Copyright © 2019 Yuanye Wang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
        playSound(sounds[sender.tag])
    }
    func playSound(_ selected : String) {
        let url = Bundle.main.url(forResource: selected, withExtension: "wav")
        do {
            player = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        player.play()
    }
}

