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
  
        let bar = CALayer()
        bar.bounds = CGRect(x: 0.0, y: 0.0, width: 8.0, height: 40.0)
        bar.position = CGPoint(x: 10, y: 75)
        bar.cornerRadius = 2.0
        bar.backgroundColor = UIColor.red.cgColor
        
        
        let move = CABasicAnimation(keyPath: "position.y")
        move.toValue = bar.position.y - 35
        move.duration = 0.5
        move.autoreverses = true
        move.repeatCount = Float.infinity
        bar.add(move, forKey: nil)
        
        
        let replecate = CAReplicatorLayer()
    
        replecate.addSublayer(bar)
        
        replecate.position = view.center
        replecate.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        replecate.backgroundColor = UIColor.green.cgColor
        
        replecate.instanceCount = 3
        replecate.instanceTransform = CATransform3DMakeTranslation(20, 0, 0)
        replecate.instanceDelay = 0.33
        replecate.masksToBounds = true
        
        view.layer.addSublayer(replecate)
    }

}

