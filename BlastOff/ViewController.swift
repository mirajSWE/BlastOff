//
//  ViewController.swift
//  BlastOff
//
//  Created by Miraj Brahmbhatt on 3/29/19.
//  Copyright © 2019 Miraj Brahmbhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var blueBackground: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var scene: UIView!
    @IBOutlet weak var rocket: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func powerButtonPressed(_ sender: Any)
    {
        scene.isHidden = false
        blueBackground.isHidden = true
        powerButton.isHidden = true
        
    }
    
}

