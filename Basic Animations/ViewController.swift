//
//  ViewController.swift
//  Basic Animations
//
//  Created by Nitin Bhatia on 24/09/19.
//  Copyright © 2019 Nitin Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CAAnimationDelegate {

    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var testView2: UIView!
    @IBOutlet weak var test3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        //testView2.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = Double.pi * 2
        rotateAnimation.duration = 5
       // self.test3.layer.add(rotateAnimation, forKey: nil)
    }
    
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        
        testView.Move(xAxis: 0, yAxis: (self.view.frame.height / 2 - testView.frame.height), completion: { _ in
            print("done")
            self.testView2.zoomOut(completion: { _ in
                self.test3.rotate360Degrees(duration: 0.9, completionDelegate: self)
            })
        })
     
//        UIView.animate(withDuration: 0.9,delay: 0.4,options: [.curveLinear], animations: {
//            self.testView.transform = CGAffineTransform.identity
//        },completion: {(finished) in
//            UIView.animate(withDuration: 0.9,delay: 0.4,options: [.curveLinear], animations: {
//                self.testView2.transform = CGAffineTransform.identity
//            },completion: {(finished) in
//                UIView.animate(withDuration: 0.9,delay: 0.4,options: [.curveLinear], animations: {
//
//                    self.test3.transform = CGAffineTransform.identity
//                })
//            })
//        })
        
        
    }


}

