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
        let awesomeMessage = "You are awesome!"
        let greatMessage = "You are great!"
        let daBombMessage = "You are da bomb!"
        if messageLabel.text == awesomeMessage{
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        }else if messageLabel.text == greatMessage {
            messageLabel.text = daBombMessage
            imageView.image = UIImage(named: "image2")
        }else{
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
    }
}

