//
//  DashboardViewController.UI.swift
//  Dashboard
//
//  Created by Vlad Gorlov on 29.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

public struct DashboardViewController_UI: UIViewControllerRepresentable {

   let bundle = Bundle(for: DashboardViewController.self)

   public init() {}

   public func makeUIViewController(context: Context) -> DashboardViewController {
      let vc = UIStoryboard(name: "Dashboard", bundle: bundle).instantiateInitialViewController() as! DashboardViewController
      return vc
   }

   public func updateUIViewController(_ uiViewController: DashboardViewController, context: Context) {
   }
}

public struct DashboardViewController_UI_Previews: PreviewProvider {
   public static var previews: some View {
      DashboardViewController_UI().previewDevice("iPhone SE")
   }
}
#endif
