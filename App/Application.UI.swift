//
//  Application.UI.swift
//  SwiftUI-Previews-in-Modular-app
//
//  Created by Vlad Gorlov on 29.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import SharedUI
import Dashboard
import Settings

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct Application_UI_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         GradientView_UI().previewDevice("iPhone SE");
         DashboardViewController_UI().previewDevice("iPhone SE");
         SettingsViewController_UI().previewDevice("iPhone SE")
      }
   }
}
#endif
