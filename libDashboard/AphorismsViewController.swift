//
//  AphorismsViewController.swift
//  Dashboard
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit
import SharedLogic

class AphorismsViewController: UITableViewController {

   private lazy var dataSource = AphorismsDataSource()
   private lazy var sections = AphorismCategory.allCases
   
}

extension AphorismsViewController {

   override func numberOfSections(in tableView: UITableView) -> Int {
      return sections.count
   }

   public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      let section = sections[section]
      return dataSource.items(in: section).count
   }

   public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let section = sections[indexPath.section]
      let aphorism = dataSource.items(in: section)[indexPath.row]
      let cell = tableView.dequeueReusableCell(withIdentifier: "Aphorism", for: indexPath) as! AphorismCell
      cell.aphorism = aphorism
      return cell
   }

   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return sections[section].localizedTitle
   }

}
