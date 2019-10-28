//
//  DashboardViewController.swift
//  Settings
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import Foundation
import UIKit
import Settings

public class DashboardViewController: UITabBarController {

   public override func viewDidLoad() {
      super.viewDidLoad()
      let settingsNavigationController = children.last as? UINavigationController
      let settingsController = SettingsViewController()
      settingsNavigationController?.setViewControllers([settingsController], animated: false)
   }
   
}
