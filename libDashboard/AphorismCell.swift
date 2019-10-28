//
//  AphorismCell.swift
//  Dashboard
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit
import SharedUI

class AphorismCell: UITableViewCell {

   @IBOutlet private weak var gradientView: GradientView!
   @IBOutlet private weak var aphorismLabel: UILabel!

   override func awakeFromNib() {
      super.awakeFromNib()
      gradientView.alpha = 0.1
   }

}

extension AphorismCell {

   var aphorism: String? {
      get {
         return aphorismLabel.text
      } set {
         aphorismLabel.text = newValue
      }
   }
}
