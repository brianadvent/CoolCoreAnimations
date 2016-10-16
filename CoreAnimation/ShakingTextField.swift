//
//  ShakingTextField.swift
//  CoreAnimation
//
//  Created by Training on 16/10/2016.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ShakingTextField: UITextField {

   
    func shake () {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
        
    }
    
}
