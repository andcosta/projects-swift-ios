//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Anderson Costa on 6/14/18.
//  Copyright © 2016 Anderson Costa. All rights reserved.
//

import Foundation

class Stopwatch: NSObject {
  var counter: Double
  var timer: Timer
  
  override init() {
    counter = 0.0
    timer = Timer()
  }
}
