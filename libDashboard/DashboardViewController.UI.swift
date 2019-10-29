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

struct DashboardViewController_UI: UIViewControllerRepresentable {
   let bundle = Bundle(for: DashboardViewController.self)
   func makeUIViewController(context: Context) -> DashboardViewController {
      let vc = UIStoryboard(name: "Dashboard", bundle: bundle).instantiateInitialViewController() as! DashboardViewController
      return vc
   }

   func updateUIViewController(_ uiViewController: DashboardViewController, context: Context) {
   }
}

struct DashboardViewController_UI_Previews: PreviewProvider {
   static var previews: some View {
      DashboardViewController_UI().previewDevice("iPhone SE")
   }
}
#endif
