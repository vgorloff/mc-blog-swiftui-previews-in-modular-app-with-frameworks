//
//  AphorismCategory.swift
//  SharedUI
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import SharedLogic

extension AphorismCategory {

   public var localizedTitle: String {
      switch self {
      case .people:
         return "People"
      case .life:
         return "Live"
      case .success:
         return "Success"
      }
   }
}
