//
//  Product.swift
//  GoodAsOldPhones
//
//  Copyright © 2017 Anderson Costa. All rights reserved.
//

import Foundation

class Product {
  var name: String?
  var cellImageName: String?
  var fullscreenImageName: String?
  
  init(name: String, cellImageName: String, fullscreenImageName: String) {
    self.name = name
    self.cellImageName = cellImageName
    self.fullscreenImageName = fullscreenImageName
  }
}
