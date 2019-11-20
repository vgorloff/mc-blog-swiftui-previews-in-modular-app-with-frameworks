//
//  SettingsViewController.UI.swift
//  Settings
//
//  Created by Vlad Gorlov on 29.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

public struct SettingsViewController_UI: UIViewControllerRepresentable {

   let vc = SettingsViewController()
   let nc = UINavigationController()

   public init() {}

   public func makeUIViewController(context: Context) -> UINavigationController {
      nc.setViewControllers([vc], animated: false)
      return nc
   }

   public func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
   }
}

public struct SettingsViewController_UI_Previews: PreviewProvider {
    public static var previews: some View {
        SettingsViewController_UI().previewDevice("iPhone SE")
    }
}

#endif
