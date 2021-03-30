//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(noteName : sender.currentTitle!)
        
        //Below code is for instant transition of opacity
        //
        //DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        //    sender.alpha = 1
        //}
        
        //Smoother transition
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 1
        }
        
    }
    
    @IBAction func keyDown(_ sender: UIButton) {
        sender.alpha = 0.5
    }
    
    func playSound(noteName : String) {
        let url = Bundle.main.url(forResource: noteName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


