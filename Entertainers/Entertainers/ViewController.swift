//
//  ViewController.swift
//  Entertainers
//
//  Created by Sam Meech-Ward on 2018-05-22.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var box: UIView!
  
  @IBOutlet weak var circle: UIView!
  @IBOutlet weak var box2: UIView!
  
  var animation: UIViewPropertyAnimator!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
   animation = UIViewPropertyAnimator(duration: 3.0, curve: .easeOut) {
      self.circle.frame = self.circle.frame.offsetBy(dx: 0, dy: 400)
    
      for _ in 0..<20 {
        let transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        self.circle.transform = self.circle.transform.concatenating(transform)
      }
    }
  }
  
  @IBAction func animate(_ sender: Any) {
    UIView.animate(withDuration: 2.0) {
      self.box.alpha = 1.0;
      self.box.alpha = 0.0;
    }
    
    UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveLinear, animations: {
      self.box2.alpha = 0.0;
    }, completion: nil)
    
    UIView.animate(withDuration: 3.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
      self.circle.frame = self.circle.frame.offsetBy(dx: 0, dy: 400)
    }, completion: nil)
  }
  
  @IBAction func touchUp(_ sender: Any) {
    animation.pauseAnimation()
  }
  @IBAction func touchDown(_ sender: Any) {
    animation.startAnimation()
    animation.fractionComplete = 0
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

