//
//  ViewController.swift
//  You are awesome!
//
//  Created by Gigi Kranjc on 2021-01-01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
       
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You are awesome!"
        imageView.image = UIImage(named: "image0")
        
    }
}

