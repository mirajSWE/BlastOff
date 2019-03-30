//
//  ViewController.swift
//  BlastOff
//
//  Created by Miraj Brahmbhatt on 3/29/19.
//  Copyright © 2019 Miraj Brahmbhatt. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController
{

    @IBOutlet weak var blueBackground: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var scene: UIView!
    @IBOutlet weak var rocket: UIImageView!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        } catch let error as NSError {
            print(error.description)
        }
        
    }

    @IBAction func powerButtonPressed(_ sender: Any)
    {
        scene.isHidden = false
        blueBackground.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 375, height: 201)
        }) { (finished) in
            
        }
        
    }
    
}
