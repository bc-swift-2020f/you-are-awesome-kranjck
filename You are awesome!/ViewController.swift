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
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome!", "You are great!",
                        "You are swifty!", "You are wonderful"]
        messageLabel.text = messages[messageNumber]
        messageNumber+=1
        if messageNumber == messages.count {
            messageNumber = 0
        }
        let imageName = "image" + String(imageNumber)
        // or let imageName = "image\(imageName)" (this is string interpolation)
        imageView.image = UIImage(named: imageName)
        imageNumber+=1
        if imageNumber > 9{
            imageNumber = 0
        }
        
    }
//        code below was for chapter 2.8:
//        let awesomeMessage = "You are awesome!"
//        let greatMessage = "You are great!"
//        let daBombMessage = "You are da bomb!"
//        if messageLabel.text == awesomeMessage{
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        }else if messageLabel.text == greatMessage {
//            messageLabel.text = daBombMessage
//            imageView.image = UIImage(named: "image2")
//        }else{
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
    
}

