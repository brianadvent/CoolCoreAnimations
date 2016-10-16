//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Training on 16/10/2016.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTextField: ShakingTextField!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        
        avatarImageView.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        avatarImageView.addGestureRecognizer(tapGestureRecognizer)
        
        
    }
    
    
    func addPulse(){
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: avatarImageView.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.blue.cgColor
        
        self.view.layer.insertSublayer(pulse, below: avatarImageView.layer)
        
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextField.shake()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

