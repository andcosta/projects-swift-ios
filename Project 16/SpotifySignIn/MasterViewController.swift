//
//  MasterViewController.swift
//  SpotifySignIn
//
//  Created by Anderson Costa on 8/7/18.
//  Copyright (c) 2018 Anderson Costa. All rights reserved.
//

import UIKit

class MasterViewController: VideoSplashViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupVideoBackground()
  }
  
  func setupVideoBackground() {
    let url = URL(fileURLWithPath: Bundle.main.path(forResource: "moments", ofType: "mp4")!)
    
    // setup layout
    videoFrame = view.frame
    fillMode = .resizeAspectFill
    alwaysRepeat = true
    sound = true
    startTime = 2.0
    alpha = 0.8
    
    contentURL = url
    view.isUserInteractionEnabled = false
  }
  
  override var preferredStatusBarStyle : UIStatusBarStyle {
    return .lightContent
  }
}
