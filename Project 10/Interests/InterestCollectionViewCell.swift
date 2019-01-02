//
//  InterestCollectionViewCell.swift
//  Interests
//
//  Copyright © 20118 Anderson Costa. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
  // MARK: - IBOutlets
  @IBOutlet weak var featuredImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  
  // MARK: - public API
  var interest: Interest! {
    didSet {
      updateUI()
    }
  }
  
  fileprivate func updateUI() {
    titleLabel.text = interest.title
    featuredImageView.image = interest.featuredImage
  }
  
  // MARK: - refactor layout
  override func layoutSubviews() {
    super.layoutSubviews()
    
    self.layer.cornerRadius = 8.0
    self.clipsToBounds = true
  }
}
