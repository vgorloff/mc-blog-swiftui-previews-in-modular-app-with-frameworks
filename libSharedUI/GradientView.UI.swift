//
//  GradientView.UI.swift
//  SharedUI
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI

public struct GradientView_UI: UIViewRepresentable {

   let view = GradientView()

   public init() {
   }

   public func makeUIView(context: Context) -> GradientView {
      return view
   }

   public func updateUIView(_ uiView: GradientView, context: Context) {
   }
}

struct GradientView_UI_Previews: PreviewProvider {

   static var views: [GradientView_UI] {
      let views = [
         GradientView_UI(),
         GradientView_UI()
      ]
      return views
   }

   static var previews: some View {
      ZStack {
         Color.gray
         VStack {
            ForEach(views.indices) {
               views[$0].frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
            }
         }
      }
      .previewDevice("iPhone SE")
   }
}

#endif
