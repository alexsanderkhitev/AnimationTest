//
//  ViewController.swift
//  Animation
//
//  Created by Alexsander Khitev on 2/13/17.
//  Copyright © 2017 Alexsander Khitev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        animation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    private func animation() {
        let square = CAReplicatorLayer()
        square.bounds = CGRect(x: 0, y: 0, width: 60, height: 60)
        square.position = view.center
        square.backgroundColor = UIColor.lightGray.cgColor
        
        
        view.layer.addSublayer(square)
        
        
        let bar = CALayer()
        bar.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 40.0)
        bar.position = CGPoint(x: 10.0, y: 75.0)
        bar.cornerRadius = 2.0
        bar.backgroundColor = UIColor.red.cgColor
        
        square.addSublayer(bar)
        
        
        let move = CABasicAnimation(keyPath: "position.y")
        move.toValue = bar.position.y - 35
        move.duration = 0.5
        move.autoreverses = true
        move.repeatCount = Float.infinity
        
        bar.add(move, forKey: nil)
        
        
        square.instanceCount = 3
        square.instanceTransform = CATransform3DMakeTranslation(20, 0, 0)
        square.instanceDelay = 0.33
        square.backgroundColor = UIColor.clear.cgColor
        square.masksToBounds = true
    }

}

