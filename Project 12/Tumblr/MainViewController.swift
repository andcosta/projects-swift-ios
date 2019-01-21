//
//  MainViewController.swift
//  Tumblr
//
//  Created by Anderson Costa on 7/11/18.
//  Copyright © 2018 yigu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  let transitionManager = TransitionManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // remove hairline
    navigationController?.toolbar.clipsToBounds = true
  }
  
  @IBAction func unwindToMainViewController (_ sender: UIStoryboardSegue){
    dismiss(animated: true, completion: nil)
  }
}
