//
//  SampleApp+AppDelegate.swift
//  PodGeneratorCore
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation

extension SampleAppTemplates {
    
    static func appDelegate() -> String {
        let template = {
            """
            //
            //  AppDelegate.swift
            //  SampleApp
            //

            import UIKit

            @UIApplicationMain
            class AppDelegate: UIResponder, UIApplicationDelegate {
                
                var window: UIWindow?
                
                func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                    
                    let window = UIWindow(frame: UIScreen.main.bounds)
                    window.backgroundColor = .white
                    window.makeKeyAndVisible()
                    window.rootViewController = UINavigationController(rootViewController: ViewController())
                    self.window = window
                    
                    return true
                }
            }
            """
        }()
        return template
    }
}
