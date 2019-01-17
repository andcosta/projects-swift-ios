//
//  Common.swift
//  Animations
//
//  Created by Anderson Costa on 6/28/18.
//  Copyright © 2018 Anderson Costa. All rights reserved.
//

import Foundation
import UIKit

let screenRect = UIScreen.main.bounds
let generalFrame = CGRect(x: 0, y: 0, width: screenRect.width / 2.0, height: screenRect.height / 4.0)
let generalCenter = CGPoint(x: screenRect.midX, y: screenRect.midY - 50)

func drawRectView(_ color: UIColor, frame: CGRect, center: CGPoint) -> UIView {
  let view = UIView(frame: frame)
  view.center = center
  view.backgroundColor = color
  return view
}

func drawCircleView() -> UIView {
  let circlePath = UIBezierPath(arcCenter: CGPoint(x: 100,y: screenRect.midY - 50), radius: CGFloat(20), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
  
  let shapeLayer = CAShapeLayer()
  shapeLayer.path = circlePath.cgPath
  
  shapeLayer.fillColor = UIColor.red.cgColor
  shapeLayer.strokeColor = UIColor.red.cgColor
  shapeLayer.lineWidth = 3.0
  
  let view = UIView()
  view.layer.addSublayer(shapeLayer)
  
  return view
}

func makeAlert(_ title: String, message: String, actionTitle: String) -> UIAlertController {
  let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
  alert.addAction(UIAlertAction(title: actionTitle, style: UIAlertActionStyle.default, handler: nil))
  
  return alert
}
