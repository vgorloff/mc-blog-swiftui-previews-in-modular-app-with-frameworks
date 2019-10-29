//
//  SettingsCell.UI.swift
//  Settings
//
//  Created by Vlad Gorlov on 29.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import SharedUI
import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct SettingsCell_UI: UIViewRepresentable {

   let nib = UINib(nibName: "SettingsCell", bundle: Bundle(for: SettingsCell.self))
   func makeUIView(context: Context) -> SettingsCell {
      let cell = nib.instantiate(withOwner: nil, options: [:]).compactMap { $0 as? SettingsCell }.first
      cell?.setting = "Lorem ipsum"
      cell?.gradientAlpha = 0.5
      return cell!
   }

   func updateUIView(_ uiView: SettingsCell, context: Context) {

   }
}

struct SettingsCell_UI_Previews: PreviewProvider {

   static var views: [SettingsCell_UI] {
      let views = [
         SettingsCell_UI(),
         SettingsCell_UI()
      ]
      return views
   }

   static var previews: some View {
      ZStack {
         Color.gray
         VStack {
            ForEach(views.indices) {
               views[$0].frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 240)
            }
         }
      }
      .previewDevice("iPhone SE")
   }
}

#endif
