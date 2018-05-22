//
//  TrumpViewController.swift
//  Entertainers
//
//  Created by Sam Meech-Ward on 2018-05-22.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class TrumpViewController: UIViewController {
  
  @IBOutlet weak var topConstraint: NSLayoutConstraint!
  
  @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func action(_ sender: Any) {
//    self.topConstraint.constant = 500
    self.topConstraint.isActive = false
    self.bottomConstraint.isActive = true
    
    let animation = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut) {
      self.view.layoutIfNeeded()
    }
    animation.startAnimation()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
