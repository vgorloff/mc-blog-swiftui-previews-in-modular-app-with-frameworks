//
//  AphorismsDataSource.swift
//  SharedLogic
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation

// See: Aphorism Examples: https://examples.yourdictionary.com/aphorism-examples.html

public class AphorismsDataSource {

   public init() {
   }
}

extension AphorismsDataSource {

   public func items(in category: AphorismCategory) -> [String] {
      switch category {
      case .people:
         return [
            "Actions speak louder than words.",
            "All for one and one for all.",
            "Early to bed, early to rise, makes a man healthy, wealthy, and wise."
         ]
      case .life:
         return [
            "A barking dog never bites.",
            "All that glitters isn't gold.",
            "Eat to live; don't live to eat."
         ]
      case .success:
         return [
            "A penny saved is a penny earned.",
            "Don't judge a book by its cover.",
            "Measure twice cut once."
         ]
      }
   }

}
