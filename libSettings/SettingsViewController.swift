//
//  SettingsViewController.swift
//  Settings
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit

public class SettingsViewController: UITableViewController {

   private let cellId = "Settings"

   public init() {
      super.init(nibName: nil, bundle: nil)
      title = "Settings"

      let nib = UINib(nibName: "SettingsCell", bundle: Bundle(for: SettingsCell.self))
      tableView.register(nib, forCellReuseIdentifier: cellId)
   }

   required init?(coder: NSCoder) {
      fatalError("Please use this view controller from code!")
   }

}

extension SettingsViewController {

   public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 10
   }

   public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SettingsCell
      cell.setting = "Setting #\(indexPath.row)"
      return cell
   }
}
