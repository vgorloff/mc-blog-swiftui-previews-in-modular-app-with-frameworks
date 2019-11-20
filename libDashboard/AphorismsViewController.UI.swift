//
//  AphorismsViewController.UI.swift
//  Dashboard
//
//  Created by Vlad Gorlov on 29.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct AphorismsViewController_UI: UIViewControllerRepresentable {

   let bundle = Bundle(for: AphorismsViewController.self)
   let nc = UINavigationController()

   func makeUIViewController(context: Context) -> UINavigationController {
      let vc = UIStoryboard(name: "Dashboard", bundle: bundle).instantiateViewController(identifier: "Aphorisms") as! AphorismsViewController
      nc.setViewControllers([vc], animated: false)
      return nc
   }

   func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
   }
}

public struct AphorismsViewController_UI_Previews: PreviewProvider {
   public static var previews: some View {
      AphorismsViewController_UI().previewDevice("iPhone SE")
   }
}

#endif
