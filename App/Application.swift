//
//  Application.swift
//  SwiftUI-Previews-in-Modular-app
//
//  Created by Vlad Gorlov on 28.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import UIKit
import Dashboard

public class Application: UIApplication {
   private lazy var mainWindow = UIWindow(frame: UIScreen.main.bounds)

   override init() {
      super.init()
      delegate = self
   }
}

extension Application: UIApplicationDelegate {
   public func application(_: UIApplication,
                           didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
      let bundle = Bundle(for: DashboardViewController.self)
      let dashboardViewController = UIStoryboard(name: "Dashboard", bundle: bundle).instantiateInitialViewController()!
      mainWindow.rootViewController = UINavigationController(rootViewController: dashboardViewController)
      mainWindow.makeKeyAndVisible()
      return true
   }
}
