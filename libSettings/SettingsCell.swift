//
//  SettingsCell.swift
//  Settings
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit
import SharedUI

class SettingsCell: UITableViewCell {

   @IBOutlet private weak var gradientView: GradientView!
   @IBOutlet private weak var settingLabel: UILabel!

   override func awakeFromNib() {
      super.awakeFromNib()
      gradientAlpha = 0.1
      settingLabel.numberOfLines = 0
   }

}

extension SettingsCell {

   var gradientAlpha: CGFloat {
      get {
         return gradientView.alpha
      } set {
         gradientView.alpha = newValue
      }
   }

   var setting: String? {
      get {
         return settingLabel.text
      } set {
         settingLabel.text = newValue
      }
   }
}
