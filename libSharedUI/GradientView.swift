//
//  GradientView.swift
//  SharedUI
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit

public class GradientView: UIView {

   private lazy var gradient = CAGradientLayer()

   public override init(frame: CGRect) {
      super.init(frame: frame)
      setupUI()
   }

   required init?(coder: NSCoder) {
      super.init(coder: coder)
      setupUI()
   }

   public override func layoutSubviews() {
      super.layoutSubviews()
      gradient.frame = bounds
   }
}


extension GradientView {

   private func setupUI() {
      let colors: [UIColor] = [.red, .orange, .yellow, .green, .cyan, .blue, .magenta]
      gradient.colors = colors.map { $0.cgColor }
      gradient.startPoint = CGPoint(x: 0, y: 0)
      gradient.endPoint = CGPoint(x: 1, y: 1)
      layer.insertSublayer(gradient, at: 0)
   }
}
